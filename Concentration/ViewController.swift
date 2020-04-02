//
//  ViewController.swift
//  Concentration
//
//  Created by Kevin Nguyen on 3/31/20.
//  Copyright © 2020 Kevin Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flipCount = 0
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    var emojiChoices = ["👻", "🎃", "👻", "🎃"]

    @IBAction func touchCard(_ sender: UIButton) {
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
        else {
            print("Card not in card Buttons")
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        print("flipCard(withEmoji: \(emoji)")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        flipCount += 1
        flipCountLabel.text = "Flips: \(flipCount)"
    }
}
