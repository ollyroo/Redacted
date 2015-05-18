//
//  ViewController.swift
//  Redacted
//
//  Created by Olly Clissold on 5/02/2015.
//  Copyright (c) 2015 CreatingCrap. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBOutlet weak var Filepath: NSTextField!
    @IBOutlet weak var IsNil: NSButtonCell!
    @IBAction func Click(sender: AnyObject) {
        let filepath = Filepath.stringValue
        let fileContent = NSString(contentsOfFile: filepath, encoding: NSUTF8StringEncoding, error: nil)
        let file = testifnil(fileContent)
        if file == "Is nil" {
            IsNil.title = "Please enter valid file path"
            IsNil.title = "File"
        }
        let words = splitlines(file)
        let indexes = SearchArray(words)
        let functionnames = getfunctionnames(indexes, words)
        let variablenames = getvariablenames(indexes, words)
        println(functionnames)
        println(variablenames)
        
    }
    
}