//
//  Tipsy.swift
//  Tipsy
//
//  Created by Valdo Parlinggoman on 07/06/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Tipsy{
    
    var bill: Float
    var person: Float
    var percentage: Float
    
    init(b: Float, p: Float, pct: Float) {
        self.bill = b
        self.person = p
        self.percentage = pct
    }
}
