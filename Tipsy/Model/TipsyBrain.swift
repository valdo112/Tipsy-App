//
//  TipsyBrain.swift
//  Tipsy
//
//  Created by Valdo Parlinggoman on 07/06/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation


struct TipsyBrain{
    
    var tipsy: Tipsy?
    
    mutating func calculateTips(billInt: Float, person: Float, percentage: Float){
        let totalBill = billInt + (billInt * percentage)
        
        let totalAll = totalBill / person
        
        tipsy = Tipsy(b: totalAll, p: person, pct: percentage)
    }
    
    
    func getBill() -> Float {
        return tipsy?.bill ?? 0.0
    }
    
    func getPerson() -> Float{
        return tipsy?.person ?? 0.0
    }
    
    func getPercentage() -> Float{
        return tipsy?.percentage ?? 0.0
    }
    
//    func personBill(person: Float) -> Float{
//        Tipsy(t: 0.0, p: person)
//        return person
//    }
//
//    func calculateAll() -> Float{
//        let totalBill = tipsy?.totalBill
//        let person = tipsy?.person
//        let totalSplit = totalBill / person
//        return totalSplit
//    }
    
    
    
    
}
