//
//  PlayerProfileVC.swift
//  swoosh-app
//
//  Created by Khadim Mbaye on 2/24/18.
//  Copyright © 2018 Khadim Mbaye. All rights reserved.
//

import UIKit

class PlayerProfileVC: UIViewController {
    
    var playerInfos: Array<String> = Array() //empty array that will contain players info
   
    @IBOutlet weak var profileLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let output = "League: \(playerInfos[0]) \n Level: \(playerInfos[1])"
        profileLabel.text = output
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
