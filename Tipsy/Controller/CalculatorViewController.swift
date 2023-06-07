//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var myStepper: UIStepper!
    
    var percentage = ["0%" : 0.0 , "10%" : 0.1, "20%" : 0.2]
    var number: Float = 0.1
    
    var tipsyBrain = TipsyBrain()
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        let pct = sender.currentTitle
        let pctValue = percentage[pct!]!
        billTextField.endEditing(true)
        
        
        if pct == "0%"{
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            number = Float(pctValue)
        } else if pct == "10%"{
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            number = Float(pctValue)
        } else{
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            number = Float(pctValue)
        }
        
        
          
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {

//        var splitValue = sender.value
        splitNumberLabel.text = String(Int(myStepper.value))
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billValue = billTextField.text ?? "0.0"
        let billInt = (billValue as NSString).floatValue
        let person = Float(myStepper.value)
        tipsyBrain.calculateTips(billInt: billInt, person: person, percentage: number)
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bill = tipsyBrain.getBill()
            destinationVC.percentage = tipsyBrain.getPercentage()
            destinationVC.person = tipsyBrain.getPerson()
        }
    }
    
    
}
    
   
    
    
    
    
    
    

 

