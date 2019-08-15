//
//  ViewController.swift
//  UserListApp
//
//  Created by 小野勇輔 on 2019/08/09.
//  Copyright © 2019 yo-project. All rights reserved.
import UIKit

class ViewController: UIViewController {
    
    // 遷移元から受け取る値
    var receiveNames: String = ""
    var receiveHobbies: String = ""
    
    // 名前ラベルのほ紐付け
    @IBOutlet weak var NameLabel: UILabel!
    // 趣味ラベルの紐付け
    @IBOutlet weak var FreeTextLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        NameLabel.text = receiveNames
        FreeTextLabel.text = receiveHobbies
    }
}
