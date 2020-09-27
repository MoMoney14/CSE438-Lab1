//
//  SalesTax.swift
//  MahotoSasaki-Lab1
//
//  Created by Mahoto Sasaki on 9/11/20.
//  Copyright © 2020 mo3aru. All rights reserved.
//

import Foundation

class SalesTax {
    //Janurary 1, 2020 tax data obtained from https://www.taxadmin.org/assets/docs/Research/Rates/sales.pdf
    var tax = [
        NSLocalizedString("Alabama", comment: ""): 4,
        NSLocalizedString("Alaska", comment: ""): 0,
        NSLocalizedString("Arizona", comment: ""): 5.6,
        NSLocalizedString("Arkansas", comment: ""): 6.5,
        NSLocalizedString("California", comment: ""): 7.25,
        NSLocalizedString("Colorado", comment: ""): 2.9,
        NSLocalizedString("Conneticut", comment: ""): 6.35,
        NSLocalizedString("Delaware", comment: ""): 0,
        NSLocalizedString("Florida", comment: ""): 6,
        NSLocalizedString("Georgia", comment: ""): 4,
        NSLocalizedString("Hawaii", comment: ""): 4,
        NSLocalizedString("Idaho", comment: ""): 6,
        NSLocalizedString("Illinois", comment: ""): 6.25,
        NSLocalizedString("Indiana", comment: ""): 7,
        NSLocalizedString("Iowa", comment: ""): 6,
        NSLocalizedString("Kansas", comment: ""): 6.5,
        NSLocalizedString("Kentucky", comment: ""): 6,
        NSLocalizedString("Louisiana", comment: ""): 4.45,
        NSLocalizedString("Maine", comment: ""): 5.5,
        NSLocalizedString("Maryland", comment: ""): 6,
        NSLocalizedString("Massachusetts", comment: ""): 6.25,
        NSLocalizedString("Michigan", comment: ""): 6,
        NSLocalizedString("Minnesota", comment: ""): 6.875,
        NSLocalizedString("Mississippi", comment: ""): 7,
        NSLocalizedString("Missouri", comment: ""): 4.225,
        NSLocalizedString("Montana", comment: ""): 0,
        NSLocalizedString("Nebraska", comment: ""): 5.5,
        NSLocalizedString("Nevada", comment: ""): 6.85,
        NSLocalizedString("New Hampshire", comment: ""): 0,
        NSLocalizedString("New Jersey", comment: ""): 6.625,
        NSLocalizedString("New Mexico", comment: ""): 5.125,
        NSLocalizedString("New York", comment: ""): 4,
        NSLocalizedString("North Carolina", comment: ""): 4.75,
        NSLocalizedString("North Dakota", comment: ""): 5,
        NSLocalizedString("Ohio", comment: ""): 5.75,
        NSLocalizedString("Oklahoma", comment: ""): 4.5,
        NSLocalizedString("Oregon", comment: ""): 0,
        NSLocalizedString("Pennsylvania", comment: ""): 6,
        NSLocalizedString("Rhode Island", comment: ""): 7,
        NSLocalizedString("South Carolina", comment: ""): 6,
        NSLocalizedString("South Dakota", comment: ""): 4.5,
        NSLocalizedString("Tennessee", comment: ""): 7,
        NSLocalizedString( "Texas", comment: ""): 6.25,
        NSLocalizedString("Utah", comment: ""): 6.1,
        NSLocalizedString("Vermont", comment: ""): 6,
        NSLocalizedString("Virginia", comment: ""): 5.3,
        NSLocalizedString("Washington", comment: ""): 6.5,
        NSLocalizedString("West Virginia", comment: ""): 6,
        NSLocalizedString("Wisconsin", comment: ""): 5,
        NSLocalizedString("Wyoming", comment: ""): 4,
        NSLocalizedString("District of Columbia", comment: ""): 6
    ]
}
