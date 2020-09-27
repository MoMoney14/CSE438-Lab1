//
//  ShoppingCalculator.swift
//  MahotoSasaki-Lab1
//
//  Created by Mahoto Sasaki on 9/11/20.
//  Copyright © 2020 mo3aru. All rights reserved.
//

import Foundation

class ShoppingCalculator {
    var originalPrice:Double!
    var discountPercentage:Double!
    var salesTaxPercentage:Double!
    
    //calculate final price
    func calculateFinalPrice() -> Double {
        let discountAmount = originalPrice * discountPercentage / 100
        let salesTaxAmount = (originalPrice - discountAmount) * salesTaxPercentage / 100
        let finalPrice = originalPrice - discountAmount + salesTaxAmount
        if finalPrice < 0 {
            return 0
        } else if finalPrice > 1000000000 {
            return 0
        } else {
            return finalPrice
        }
    }
    
    init() {
        self.originalPrice = 0
        self.discountPercentage = 0
        self.salesTaxPercentage = 0
    }
}
