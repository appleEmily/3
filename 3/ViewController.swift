//
//  ViewController.swift
//  3
//
//  Created by 野崎絵未里 on 2019/06/04.
//  Copyright © 2019年 野崎絵未里. All rights reserved.
//

import UIKit

class minion {
    var minionPic: UIImage!
    var minionName: String!
}
class ViewController: UIViewController {
    var number: Int = 2
    
    var minionCollection: [String] = []
    var kevin: minion = minion()
    var stuart: minion = minion()
    var bob: minion = minion()
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //インスタンス
        bob.minionPic = UIImage(named: "bob.png")
        bob.minionName = "bob"
        stuart.minionPic = UIImage(named: "stuart.png")
        stuart.minionName = "stuart"
        kevin.minionPic = UIImage(named: "kevin3.png")
        kevin.minionName = "kevin"
        minionCollection.append("bob")
        minionCollection.append("stuart")
        minionCollection.append("kevin")
    }
    
    @IBAction func back(_ sender: Any) {
        if number == 0 {
            number = 2
        } else {
            number -= 1
        }
        image.image = UIImage(named: minionCollection[number])
        label.text = minionCollection[number]
        
    }
    
    @IBAction func next(_ sender: Any) {
        if number == 2 {
            number = 0
        } else {
            number += 1
        }
        image.image = UIImage(named: minionCollection[number])
        label.text = minionCollection[number]
    }
}

