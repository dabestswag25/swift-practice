//
//  utilities.swift
//  Swift Practice
//
//  Created by UCode on 11/24/17.
//  Copyright © 2017 Preston Tran. All rights reserved.
//

import Foundation

func pluralize(n:Int, singular:String, plural:String) -> String {
    return n != 1 ? "\(n) \(plural)" : "\(n) \(singular)"
}
