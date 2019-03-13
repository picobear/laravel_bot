<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use GuzzleHttp\Client as GuzzleClient;
use Goutte\Client as GoutteClient;
use GuzzleHttp\Pool;
use GuzzleHttp\Psr7\Request;
use GuzzleHttp\Exception\ClientException;

use App\arstar_index;
use App\arstar_parser_overall_horoscopes as sql_overall;
use App\arstar_parser_love_horoscopes as sql_love;
use App\arstar_parser_career_horoscopes as sql_career;
use App\arstar_parser_wealth_horoscopes as sql_wealth;

class botAstro extends Command
{

    private $star;
    private $date;
    private $parser = array();

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'bot1:astro';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = '抓取click108星座資訊';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();

        //$sql_index = Flight::all();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        print "Arstar Bot Start...\n";

        $concurrency = 1;

        $guzzleClent = new GuzzleClient();
        $client = new GoutteClient();
        $client->setClient($guzzleClent);
        $request = function ($total) use ($client){
            for($i = 0; $i < 12; $i++){
                $url='http://astro.click108.com.tw/daily_'.$i.'.php?iAstro='.$i;
                yield function () use($client,$url){
                    return $client->request('GET',$url);
                };
            }
        };

        $pool = new Pool($guzzleClent, $request(12),[
            'concurrency' => $concurrency,
            'fulfilled' => function ($response, $index) use ($client){

                //星座名稱
                $response->filter('.ROOT > p > a')->each(function ($node, $key) {
                    if($key == 1){
                        $this->star = mb_substr($node->text(), 5, 3);
                    }
                });

                //今天日期
                $response->filter('#iAcDay > option:selected')->each(function ($node, $key) {
                    $this->date = $node->text();
                });

                //星座解析
                $p = $response->filter('.TODAY_CONTENT')->filter('p');
                
                $p->each(function ($node, $key) {
                    if($key % 2 == 0 || $key == 0){
                        $this -> parser[$key] = mb_substr($node->text(), 4, 5);
                    } else {
                        $this -> parser[$key] = $node->text();
                    }
                });
                

                // 儲存星座名稱及日期
                $arstar_index = arstar_index::create(['created_at'=>$this->date, 'created_time'=>date('H:i:s'), 'text'=>$this->star]);

                if($arstar_index->id > 0){
                    // 儲存整體運勢及評分
                    $overall_data = array('gid'=>$arstar_index->id, 'score'=>$this->parser[0], 'text'=>$this->parser[1]);
                    sql_overall::create($overall_data);

                    // 儲存愛情運勢及評分
                    $love_data = array('gid'=>$arstar_index->id, 'score'=>$this->parser[2], 'text'=>$this->parser[3]);
                    sql_love::create($love_data);

                    // 儲存事業運勢及評分
                    $career_data = array('gid'=>$arstar_index->id, 'score'=>$this->parser[4], 'text'=>$this->parser[5]);
                    sql_career::create($career_data);

                    // 儲存財富運勢及評分
                    $wealth_data = array('gid'=>$arstar_index->id, 'score'=>$this->parser[6], 'text'=>$this->parser[7]);
                    sql_wealth::create($wealth_data);

                    print $this->star." finished.\n";
                } else {
                    print "insert into sql error\n";
                }
            },
            'rejected' => function ($reason, $index){
                $this->error("Error is ".$reason);
            }
        ]);

        //開始爬蟲
        $promise = $pool->promise();
        $promise->wait();
    }
}
