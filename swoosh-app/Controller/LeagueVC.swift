//
//  LeagueVC.swift
//  swoosh-app
//
//  Created by Khadim Mbaye on 2/23/18.
//  Copyright © 2018 Khadim Mbaye. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

   
    
    @IBOutlet weak var nextBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    //to do when a league is select and Next button is hit
    @IBAction func onNextTapped(_ sender: Any) {
        //go to selection view
        performSegue(withIdentifier: "SelectionVCSegue", sender: sender)
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        leagueSelected(leagueType: "Womens")
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        leagueSelected(leagueType: "Mens")
    }
    
    @IBAction func onCooedTapped(_ sender: Any) {
        leagueSelected(leagueType: "Co-ed")
    }
    
    func leagueSelected(leagueType: String){
        nextBtn.isEnabled = true
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
