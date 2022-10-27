//
//  ViewController.swift
//  Bishop_WordGuess
//
//  Created by Bishop,Mackenzie N on 10/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessLetterField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    var words = [
        ["Apple", "Computer brand"],
        ["Banana", "Yellow fruit"],
        ["Batman", "The Dark Knight"],
        ["Superman", "Clark Kent"],
        ["Snoopy", "Charlie Brown's dog"]
    ]
    var count = 0
    var word = ""
    var lettersGuessed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        playAgainButton.isEnabled = false
        word = words[count][0]
    }
    @IBAction func guessLetterButtonPressed(_ sender: Any) {
    }
    @IBAction func playAgainButtonPressed(_ sender: Any) {
    }
    

}

