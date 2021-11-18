//
//  NumberGuessModel.swift
//  NumberGuess
//
//  Created by Elias Leutgebweger on 18.11.21.
//
import Foundation
import UIKit

class NumberGuessModel {
    
    var target = 0
    var guessCount = 0
    
    func compare(to: Int) -> Int {
        return target - to
    }
    
    func isValid(string: String?) -> Bool {
        var isValid = false
        if let str = string, let guess = Int(str) {
            if guess >= 0 && guess <= 100 {
                isValid = true
            }
        }
        return isValid
    }
    
    func getImage() -> String {
        var picture: String = ""
        
        if (guessCount < 6) {
            picture = "normal.png"
        } else if (guessCount < 10) {
            picture = "bad.png"
        } else {
            picture = "sad.png"
        }
        return picture
    }
    
}
