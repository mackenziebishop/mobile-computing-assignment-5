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
        ["Apple", "Computer brand", "apple_computer"],
        ["Banana", "Yellow fruit", "banana"],
        ["Batman", "The Dark Knight", "batman"],
        ["Superman", "Clark Kent", "superman"],
        ["Snoopy", "Charlie Brown's dog", "snoopy"]
    ]
    var count = 0
    var word = ""
    var lettersGuessed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        playAgainButton.isEnabled = false
        word = words[count][0]
        
        statusLabel.text = ""
        hintLabel.text = "Hint: " + words[count][1]

        displayImage.image = UIImage(named: words[0][3])
        
        updateUnderscores()
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: Any) {
        var letter = guessLetterField.text!
        
        lettersGuessed = lettersGuessed + letter
        var revealedGuess = ""
        for i in word{
            if lettersGuessed.contains(i){
                revealedGuess += "\(i)"
            }
            else{
                revealedGuess += "_ "
            }
        }
        userGuessLabel.text = revealedGuess
        guessLetterField.text = ""
        
        if userGuessLabel.text!.contains("_") == false{
            playAgainButton.isHidden = false
            guessLetterButton.isEnabled = false
        }
        guessLetterButton.isEnabled = false
    }
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        playAgainButton.isHidden = true
        
        lettersGuessed = ""
        count += 1
        
        if count == words.count{
            statusLabel.text = "Congratulations! You've finished the game!"
            userGuessLabel.text = ""
            hintLabel.text = ""
        }
        else {
            word = words[count][0]
            hintLabel.text = "Hint: "
            hintLabel.text! += words[count][1]
            
            guessLetterButton.isEnabled = true
            
            userGuessLabel.text = ""
            updateUnderscores()
            
        }
    }
    func updateUnderscores(){
        for letter in word{
            hintLabel.text! += "_ "
        }
    }
    

}

