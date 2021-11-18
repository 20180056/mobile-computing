//
//  ViewController.swift
//  NumberGuess
//
//  Created by Philiip Rockenschaub on 23.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    var model = NumberGuessModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.target = Int.random(in: 0..<100)
        
        print(target);
    }
    
    @IBAction func onTouchUpside(_ sender: Any) {
        
        let guess = Int.init(GuessTextField.text!)!
        
        var message: String = ""
        var enabled: Bool = true
        
        model.guessCount += 1
        if(model.isValid(string: GuessTextField.text)){
            let compare = model.compare(to: Int(GuessTextField.text))
    
        if guess == model.target {
            message = "Sie haben die Zahl in \(model.guessCount) Zügen erraten!"
            
            if model.guessCount < 5 {
                Emoji.image = UIImage(named: "kissing-cat_1f63d")
            } else if model.guessCount < 7 {
                Emoji.image = UIImage(named: "cat-face_1f431")
            } else if model.guessCount < 10 {
                Emoji.image = UIImage(named:"crying-cat_1f63f")
            } else {
                Emoji.image = UIImage(named:"weary-cat_1f640")
            }
            
            Emoji.isHidden = false;
            
            enabled = false;
        } else {
            if guess > model.target {
                message = "Ihre Zahl \(guess) ist größer als das target!"
            } else {
                message = "Ihre Zahl \(guess) ist kleiner als das target!"
            }
        }
        }
        GuessTextField.resignFirstResponder()
        
        
        self.StatusLabel.text = message
        self.GuessButton.isEnabled = enabled
        
        return;
        
    }
    
    @IBAction func OnEditTextChanged(_ sender: Any) {
        print ("Text changed:")
        }

    override func view


    @IBOutlet weak var GuessButton: UIButton!
    @IBOutlet weak var StatusLabel: UILabel!
    @IBOutlet weak var GuessTextField: UITextField!
    @IBOutlet weak var Emoji: UIImageView!
}


