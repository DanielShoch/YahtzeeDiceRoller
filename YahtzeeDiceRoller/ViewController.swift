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
    

    
    // Declaring variable for counting # of rolls
    var rollsMade: Int = 0
    
    
    // What happens when "Roll" button is pressed
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "diceShowingOne"), #imageLiteral(resourceName: "diceShowingTwo"), #imageLiteral(resourceName: "diceShowingThree"), #imageLiteral(resourceName: "diceShowingFour"), #imageLiteral(resourceName: "diceShowingFive"), #imageLiteral(resourceName: "diceShowingSix")]
        
        // Creating Max Roll Alert
        let maxRollAlert = UIAlertController(title: "Max Rolls Made!", message: "You've made 3 rolls and have none left for this turn! Count your score and hit 'Reset'.", preferredStyle: .alert)
        
        // Adding action to Max Roll Alert
        maxRollAlert.addAction(UIAlertAction(title: "Okay!", style: .default, handler: nil))
        
        // Creating Yahtzee Alert
        let yahtzeeAlert = UIAlertController(title: "YAHTZEE!!", message: "Congratulations! You rolled a Yahtzee!!", preferredStyle: .alert)
        
        // Adding action to Yahtzee Alert
        yahtzeeAlert.addAction(UIAlertAction(title: "Yay!", style: .default, handler: nil))
        
        // When to roll vs execute max roll alert
        if rollsMade == 3 {
            
            self.present(maxRollAlert, animated: true)
            
        } else {
    
            // Adding to roll count
            rollsMade += 1
            
            // Dice One roll with an initial roll and two delay rolls
            if diceOneHighlight.alpha == 0 {
                diceOne.setImage(diceArray.randomElement(), for: .normal)
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                if self.diceOneHighlight.alpha == 0 {
                    self.diceOne.setImage(diceArray.randomElement(), for: .normal)
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                if self.diceOneHighlight.alpha == 0 {
                    self.diceOne.setImage(diceArray.randomElement(), for: .normal)
                }
            }

            // Dice Two roll with an initial roll and two delay rolls
            if diceTwoHighlight.alpha == 0 {
                diceTwo.setImage(diceArray.randomElement(), for: .normal)
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                if self.diceTwoHighlight.alpha == 0 {
                    self.diceTwo.setImage(diceArray.randomElement(), for: .normal)
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                if self.diceTwoHighlight.alpha == 0 {
                    self.diceTwo.setImage(diceArray.randomElement(), for: .normal)
                }
            }
            
            // Dice Three roll with an initial roll and two delay rolls
            if diceThreeHighlight.alpha == 0 {
                diceThree.setImage(diceArray.randomElement(), for: .normal)
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                if self.diceThreeHighlight.alpha == 0 {
                    self.diceThree.setImage(diceArray.randomElement(), for: .normal)
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                if self.diceThreeHighlight.alpha == 0 {
                    self.diceThree.setImage(diceArray.randomElement(), for: .normal)
                }
            }
            
            // Dice Four roll with an initial roll and two delay rolls
            if diceFourHighlight.alpha == 0 {
                diceFour.setImage(diceArray.randomElement(), for: .normal)
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                if self.diceFourHighlight.alpha == 0 {
                    self.diceFour.setImage(diceArray.randomElement(), for: .normal)
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                if self.diceFourHighlight.alpha == 0 {
                    self.diceFour.setImage(diceArray.randomElement(), for: .normal)
                }
            }
     
            // Dice Five roll with an initial roll and two delay rolls
            if diceFiveHighlight.alpha == 0 {
                diceFive.setImage(diceArray.randomElement(), for: .normal)
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                if self.diceFiveHighlight.alpha == 0 {
                    self.diceFive.setImage(diceArray.randomElement(), for: .normal)
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                if self.diceFiveHighlight.alpha == 0 {
                    self.diceFive.setImage(diceArray.randomElement(), for: .normal)
                }
            }
        }
        
        // Conditions for Yahtzee alert
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            if self.rollsMade != 0 {
                if self.diceOne.currentImage == self.diceTwo.currentImage {
                    if self.diceOne.currentImage == self.diceThree.currentImage {
                        if self.diceOne.currentImage == self.diceFour.currentImage {
                            if self.diceOne.currentImage == self.diceFive.currentImage {
                                self.present(yahtzeeAlert, animated: true)
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    // What happens when "Reset" button is tapped
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        
        rollsMade = 0
        
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
}
