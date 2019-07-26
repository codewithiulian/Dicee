//
//  ViewController.swift
//  Dicee
//
//  Created by Iulian Oana on 25/07/2019.
//  Copyright © 2019 Iulian Oana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Declare the dice indexes (that will get randomly defined).
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    // Declare the dice collection holding the names of the dices.
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice5"]
    
    // Declare the UI Image VIews of the two dices.
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }
    
    // Callback for 'Roll it!' button click.
    @IBAction func rollButtonPressed(_ sender: UIButton){
        updateDiceImages()
    }
    
    // Responsible with changing the dice images randomly.
    func updateDiceImages(){
        // Two random ints (bound to 6) are generated.
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        // CHange the name value of the image property of the dices randomly.
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}

