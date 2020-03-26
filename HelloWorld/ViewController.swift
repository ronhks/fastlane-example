//
//  ViewController.swift
//  HelloWorld
//
//  Created by Branko Ajzele on 24/04/15.
//  Copyright (c) 2015 Foggyline. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var instructionLabel: UILabel? = nil
    @IBOutlet weak var name: UITextField? = nil
    @IBOutlet weak var greeting: UILabel? = nil
    @IBOutlet weak var counterLabel: UILabel? = nil
    var counter: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        println("-- didReceiveMemoryWarning --")
    }

    @IBAction func sayHello() {
        if name!.text.isEmpty {
            greeting?.text = "Ups! Your name?"
        } else {
            greeting?.text = "Hello " + name!.text
        }
        
        counter++
        
        counterLabel?.text = "clicked: \(counter)"
    }
    
}

