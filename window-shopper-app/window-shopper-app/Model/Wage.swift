//
//  Wage.swift
//  window-shopper-app
//
//  Created by Ferdinand Becker on 23/07/2018.
//  Copyright © 2018 Ferdinand Becker. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double)->Int{
        return Int(ceil(price/wage))
    }
}
