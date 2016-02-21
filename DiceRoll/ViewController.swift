//
//  ViewController.swift
//  DiceRoll
//
//  Created by Greg Willis on 2/8/16.
//  Copyright © 2016 Willis Programming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    @IBOutlet weak var diceRollLabel: UIImageView!
    

    var diceNameArray : [String] = ["oneDie", "twoDie", "threeDie", "fourDie", "fiveDie", "sixDie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickedRollButton(sender: AnyObject) {
        
        let firstRandomNumber = Int(arc4random_uniform(6))
        let firstDiceString:String = diceNameArray[firstRandomNumber]
        self.firstDice.image = UIImage(named: firstDiceString)
        
        let secondRandomNumber = Int(arc4random_uniform(6))
        let secondDiceString:String = diceNameArray[secondRandomNumber]
        self.secondDice.image = UIImage(named: secondDiceString)

    }

}

