//
//  SearchLines.swift
//  Redacted
//
//  Created by Olly Clissold on 10/03/2015.
//  Copyright (c) 2015 CreatingCrap. All rights reserved.
//

import Foundation

func Searchlines(string: String) -> Bool{
    
    if string.rangeOfString("Swift") != nil {
        var exists = true
        println("range")
        return exists
    }
    
    // alternative: not case sensitive
    if string.lowercaseString.rangeOfString("swift") != nil {
        let exists = true
        println("not")
        return exists
    }
    var exists = false
    return exists
}




//    let i = 0
//    func findString() {
//        let found = false
//        while i < lookfor.count {
//            if lookin(i) == lookfor(i) {
//                found = true
//            }
//            while let j = 1 == lookfor.count {
//                if lookin(i + j - 1) <> lookfor(j) {
//                    found = false
//                }
//            }
//        }
//
//    }
//
//
//}