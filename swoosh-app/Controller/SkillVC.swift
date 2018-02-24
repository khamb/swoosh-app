//
//  SelectionVC.swift
//  swoosh-app
//
//  Created by Khadim Mbaye on 2/23/18.
//  Copyright © 2018 Khadim Mbaye. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var finishBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        finishBtn.isEnabled = false
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onBeginnerTapped(_ sender: Any) {
        levelSelected(level: "Beginner")
    }
    
    @IBAction func onProTapped(_ sender: Any) {
        levelSelected(level: "Pro")
    }
    
    @IBAction func onFInishTapped(_ sender: Any) {
        performSegue(withIdentifier: "PlayerProfileVCSegue", sender: sender)
    }
    
    
    func levelSelected(level: String){
        finishBtn.isEnabled = true
        player.playerLevel = level
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let profile = segue.destination as? PlayerProfileVC{
            profile.playerInfos.append(player.playerLeague)
            profile.playerInfos.append(player.playerLevel)
        }
    }


}
