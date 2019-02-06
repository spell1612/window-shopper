//
//  Wage.swift
//  window-shopper
//
//  Created by Sayooj Sojen on 06/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import Foundation

class Wage{
    class func calcHours(wage: Double,price: Double)->Int {
        return Int(ceil(price/wage))
    }
}
