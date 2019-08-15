//
//  TableViewController.swift
//  UserListApp
//
//  Created by 小野勇輔 on 2019/08/09.
//  Copyright © 2019 yo-project. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var name: String = ""
    var hobby: String = ""
    
    // 名前配列
    let names: [String] = [ "永井優", "小野勇輔", "豊岡正紘", "分目祐太", "金田祐作", "甲斐崎香", "志賀大河", "中村泰輔", "津國由莉子", "堀田真", "田内翔太郎", "福沢貴一", "平田奈那", "吉澤優衣" ]
    // 趣味配列
    let hobbies: [String] = [
        
        "音楽が好き。ビジュアル系バンドが好きでバンドを組んでギターを弾いたりした。最近の趣味はバイクに乗ることとキックボクシング。",
        "スポーツをすることと釣りが好きです！サッカーと水泳をやっていました",
        "バックカントリースキーしてみたい！美味しいものたくさん食べたい！スキューバダイビングしたい！深夜特急読みながら同じところ旅したい！",
        "卓球とランニングが好きです。世界のいろいろな国に行ってみたいです。最近は、フィリピンに行って大好きになりました。",
        "小学校二年生から高校3年生までサッカーをしていて、今も趣味でフットサルをしています。最近はキックボクシングジムに通い始めましたが、細身になりたいので筋トレはあまりしないようにしています。ライブハウスに音楽を聞きに行くことが好きで、5個上の兄と一緒にライブやフェスに行くことがあります。上記、宜しくお願い致します。",
        "あだ名はかおりん18歳女。好きな事は旅行と遊び。友達と遊ぶことが好きでーすwww",
        "バレーボール、サッカー、バスケと運動が全般的に好きです！海外旅行などに最近ハマり、特にほかのアジア圏の国への旅行をいっぱいしてみたいです！あと料理も好きです！",
        "サッカー、カラオケ、旅行、食事、飲酒等基本楽しければなんでもいい。ポンコツという自負を持っている",
        "あだ名はゆりちゃん。22歳女。好きなことはピアノと麻雀とバレエ。基本的にインドアで引きこもって家でゲームをしていることが多い。夜になると街を徘徊することも多く、その時はお酒を大量に浴びている。次の日に、飲み過ぎだと後悔するけど、繰り返してしまうおバカさんです。",
        "エレキベースが趣味。高校1年からロックを中心に音楽活動を始める。初めはASIAN KUNG - FU GENERATIONや東京事変などを好みとしていた。大学からは一変し、フュージョンを中心に演奏活動をする。Pat Metheny Group や スナーキー・パピーが好き。",
        "普段は、読書か散歩かアニメを見て過ごしてます！あと最近は筋トレにもハマりかけています",
        "サッカー好きの脳筋です。今の趣味はバイトすること週6でみんな大好きcoffee mafiaで働いてますよ!いつでもおいで",
        "あだなは、はち(本名:なな)で、東京くるたびにハチ公に挨拶しています。弾丸ひとり旅など、突然思い立ったことをやるのが好きです。東京生活わくわくしてます〜",
        "ゲームが大好き。特にドラクエをこよなく愛しており、2018年の夏休みは約200時間をドラクエに費やした。他にもピアノや海外旅行や読書など様々な趣味がある"
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // セクション数
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    // セル数
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    // セルの操作
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // セルに名前を表示
        cell.textLabel?.text = names[indexPath.row]

        return cell
    }
    // セルが押された時の処理
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // キャンプ生の名前と趣味を代入
        name = names[indexPath.row]
        hobby = hobbies[indexPath.row]
        // 画面遷移が行われる
        performSegue(withIdentifier: "toSecondViewController", sender: nil)
        
    }
    // 画面遷移された時に呼び出された時
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard segue.identifier == "toSecondViewController",let svc = segue.destination as?
           ViewController else {
                return
        }
        
        svc.receiveNames = name
        svc.receiveHobbies = hobby
        
    }

}




