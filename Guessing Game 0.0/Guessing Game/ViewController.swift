//
//  ViewController.swift
//  Guessing Game
//
//  Created by Miranda Porter on 5/20/20.
//  Copyright © 2020 DrLeopardesS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Two new properties for ViewController class:
    @IBOutlet var hiddenNumberLabel: UILabel!
    @IBOutlet var randomNumberLabel: UILabel!
    
    //Two new buttons listed:
    @IBAction func lowerButton (_ sender: Any){
        //assgin randomNumberLabel a randomly generated number
        self.randomNumberLabel.text = String (Int ( arc4random_uniform(10)))
   
    }
    @IBAction func higherButton (_ sender: Any){

        self.randomNumberLabel.text = String (Int (arc4random_uniform(10)))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

