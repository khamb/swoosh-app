//
//  SelectionVC.swift
//  swoosh-app
//
//  Created by Khadim Mbaye on 2/23/18.
//  Copyright © 2018 Khadim Mbaye. All rights reserved.
//

import UIKit

class SelectionVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text = "You selected \(String(player.playerLeague)) League"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
