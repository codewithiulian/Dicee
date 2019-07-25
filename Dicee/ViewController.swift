//
//  ViewController.swift
//  Dicee
//
//  Created by Iulian Oana on 25/07/2019.
//  Copyright © 2019 Iulian Oana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Callback for 'Roll it!' button click.
    @IBAction func rollButtonPressed(_ sender: UIButton){
        // Two random ints (bound to 6) are generated.
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randomDiceIndex1)
    }
}

