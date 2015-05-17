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

func SearchArray(searching: Array<(String)>) -> Array<(Int)> {
    var numbers = [(Int)]()
    var i = 0
    while i < searching.count  {
        let hello = searching[i]
        if hello.lowercaseString.rangeOfString("func") != nil && hello.lowercaseString.rangeOfString("  ") == nil {
            numbers.append(i)
        }
        i = i + 1
    }
    return numbers
}


func splitlines(lines: String) -> Array<(String)>{
    var i = 0
    var linenum = 1
    var characters = [(String)]()
    var char = String()
    var conditional = String()
    
    while i < countElements(lines) {
        var character = lines[advance(lines.startIndex, i)]
        conditional = " "
        conditional.append(character)
        if conditional == " \n" {
            characters.append((char))
            linenum = linenum + 1
            char = " "
            i = i+1
        }
        else {
            char.append(character)
            i = i + 1
          // println(char)
        }
        
    }
    characters.append((char))
    return characters
}

func testifnil(fileContent: String?) -> String {
    if fileContent != nil {
        let file = fileContent!
        return file
    }
    return ("Is nil")
}

func getfunctionnames(indexes: Array<(Int)>, lines: Array<(String)>) -> String {
    
    var i = 0
    var j = 0
    var functions = ""
    let enter: Character = "\n"
    while j < countElements(indexes) {
        var line = lines[indexes[j]]
        var character = line[advance(line.startIndex, i+5)]
        if character == "(" {
            j = j + 1
            i = 0
            functions.append(enter)
        }
        else {
            functions.append(character)
        }
        i = i + 1
        
    }
    println(functions)
    return functions
}

func getvariablenames(indexes: Array<(Int)>, lines: Array<(String)>) {
    
    var i = 0
    var j = 0
    var variables = ""
    var inRange = false
    let enter: Character = "\n"
    var bracketused = false
    
    while j < countElements(indexes) {
        var line = lines[indexes[j]]
        var character = line[advance(line.startIndex, i)]
        if character == ":" {
            inRange = false
        }
        if character == "," {
            inRange = true
        }
        if character == "{" {
            j = j + 1
            i = 0
            inRange = false
            variables.append(enter)
            bracketused = false
        }
        if inRange == true {
            variables.append(character)
            i++
        }
        else {
            i++
        }
        if character == "(" && bracketused == false {
            inRange = true
            bracketused = true
        }
        
        println(variables)
    }
    
}
