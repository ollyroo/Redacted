//
//  SearchLines.swift
//  Redacted
//
//  Created by Olly Clissold on 10/03/2015.
//  Copyright (c) 2015 CreatingCrap. All rights reserved.
//

import Foundation

func Searchlines(string: String) -> Bool{
    // alternative: not case sensitive
    
    if string.lowercaseString.rangeOfString("swift") != nil {
        var exists = true
        println("not")
        return exists
    }
    var exists = false
    return exists
}

func splitlines(lines: String) {
    var i = 0
    var characters = [String]()
    let emptyArray = [String]()
    var char = String()
    while i < countElements(lines) {
        var character = lines[advance(lines.startIndex, i)]
        char.append(character)
        println(char)
        println(i)
        if char == ()
        characters.append(char)
        i = i + 1
        
    }
}
func testifnil(fileContent: String?) -> String {
    if fileContent != nil {
        let file = fileContent!
        return file
    }
    return ("Is nil")
}
