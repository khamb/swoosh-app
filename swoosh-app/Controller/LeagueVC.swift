//
//  LeagueVC.swift
//  swoosh-app
//
//  Created by Khadim Mbaye on 2/23/18.
//  Copyright © 2018 Khadim Mbaye. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        nextBtn.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    //to do when a league is select and Next button is hit
    @IBAction func onNextTapped(_ sender: Any) {
        //go to selection view
        performSegue(withIdentifier: "SelectionVCSegue", sender: sender)
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        whenLeagueSelected(leagueType: "Womens")
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        whenLeagueSelected(leagueType: "Mens")
    }
    
    @IBAction func onCooedTapped(_ sender: Any) {
        whenLeagueSelected(leagueType: "Co-ed")
    }
    
    func whenLeagueSelected(leagueType: String){
        player.playerLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let select = segue.destination as? SelectionVC{
            select.player = player

            
        }
    }


}
