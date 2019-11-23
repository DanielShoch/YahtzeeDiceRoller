//
//  ViewController.swift
//  YahtzeeDiceRoller
//
//  Created by Daniel Shoch on 11/16/19.
//  Copyright © 2019 Daniel Shoch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var diceOne: UIButton!
    @IBOutlet weak var diceTwo: UIButton!
    @IBOutlet weak var diceThree: UIButton!
    @IBOutlet weak var diceFour: UIButton!
    @IBOutlet weak var diceFive: UIButton!
    
    @IBOutlet weak var diceOneHighlight: UIImageView!
    @IBOutlet weak var diceTwoHighlight: UIImageView!
    @IBOutlet weak var diceThreeHighlight: UIImageView!
    @IBOutlet weak var diceFourHighlight: UIImageView!
    @IBOutlet weak var diceFiveHighlight: UIImageView!
    

    // What happens when diceOne is tapped
    @IBAction func diceOnePressed(_ sender: Any) {
        if diceOneHighlight.alpha == 0 {
            diceOneHighlight.alpha = 0.8
        } else {
            diceOneHighlight.alpha = 0
        }
    }
    
    // What happens when diceTwo is tapped
    @IBAction func diceTwoPressed(_ sender: Any) {
        if diceTwoHighlight.alpha == 0 {
            diceTwoHighlight.alpha = 0.8
        } else {
            diceTwoHighlight.alpha = 0
        }
    }

    // What happens when diceThree is tapped
    @IBAction func diceThreePressed(_ sender: Any) {
        if diceThreeHighlight.alpha == 0 {
            diceThreeHighlight.alpha = 0.8
        } else {
            diceThreeHighlight.alpha = 0
        }
    }
    
    // What happens when diceFour is tapped
    @IBAction func diceFourPressed(_ sender: Any) {
        if diceFourHighlight.alpha == 0 {
            diceFourHighlight.alpha = 0.8
        } else {
            diceFourHighlight.alpha = 0
        }
    }
    
    // What happens when diceFive is tapped
    @IBAction func diceFivePressed(_ sender: Any) {
        if diceFiveHighlight.alpha == 0 {
            diceFiveHighlight.alpha = 0.8
        } else {
            diceFiveHighlight.alpha = 0
        }
    }
    
    
    // What happens when "Roll" button is tapped
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "diceShowingOne"), #imageLiteral(resourceName: "diceShowingTwo"), #imageLiteral(resourceName: "diceShowingThree"), #imageLiteral(resourceName: "diceShowingFour"), #imageLiteral(resourceName: "diceShowingFive"), #imageLiteral(resourceName: "diceShowingSix")]
        
        if diceOneHighlight.alpha == 0 {
            diceOne.setImage(diceArray.randomElement(), for: .normal)
        }
        
        if diceTwoHighlight.alpha == 0 {
            diceTwo.setImage(diceArray.randomElement(), for: .normal)
        }
        
        if diceThreeHighlight.alpha == 0 {
            diceThree.setImage(diceArray.randomElement(), for: .normal)
        }
        
        if diceFourHighlight.alpha == 0 {
            diceFour.setImage(diceArray.randomElement(), for: .normal)
        }
        
        if diceFiveHighlight.alpha == 0 {
            diceFive.setImage(diceArray.randomElement(), for: .normal)
        }
    }
    
    // What happens when "Reset" button is tapped
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        print("Reset Button Pressed")
        
        diceOneHighlight.alpha = 0
        diceTwoHighlight.alpha = 0
        diceThreeHighlight.alpha = 0
        diceFourHighlight.alpha = 0
        diceFiveHighlight.alpha = 0
        
        diceOne.setImage(#imageLiteral(resourceName: "diceShowingOne"), for: .normal)
        diceTwo.setImage(#imageLiteral(resourceName: "diceShowingOne"), for: .normal)
        diceThree.setImage(#imageLiteral(resourceName: "diceShowingOne"), for: .normal)
        diceFour.setImage(#imageLiteral(resourceName: "diceShowingOne"), for: .normal)
        diceFive.setImage(#imageLiteral(resourceName: "diceShowingOne"), for: .normal)
    }
    
}
