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
    @IBOutlet weak var Generate: NSButton!
    @IBAction func Click(sender: AnyObject) {
        println(Filepath.stringValue)
        let filepath = Filepath.stringValue
        let fileContent = NSString(contentsOfFile: filepath, encoding: NSUTF8StringEncoding, error: nil)
        println(fileContent)
        if fileContent != nil {
            var exists = Searchlines(fileContent!)
            println(exists)
        }
    }
}

