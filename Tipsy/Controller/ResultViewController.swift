//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Valdo Parlinggoman on 07/06/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var tipsyBrain = TipsyBrain()
    var bill: Float?
    var person: Float?
    var percentage: Float?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "%.0f", bill ?? 0.0)
        
        settingsLabel.text = "Split between \(String(format: "%.0f", person ?? 0)) people, \(String(format: "%.0f", percentage ?? 0))% with  tip."
        
    }
    @IBAction func recalculatePressed(_ sender: UIButton){
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
