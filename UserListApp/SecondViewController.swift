//
//  ViewController.swift
//  UserListApp
//
//  Created by 小野勇輔 on 2019/08/09.
//  Copyright © 2019 yo-project. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 遷移元から受け取る値
    var receiveNames: String = ""
    var receiveHobbies: String = ""
    

    @IBOutlet weak var NameLabel: UILabel!
    
    
    
    @IBOutlet weak var FreeTextLabel: UILabel!
    
    
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        NameLabel.text = receiveNames
        FreeTextLabel.text = receiveHobbies
   
    }
    

 
   

}
