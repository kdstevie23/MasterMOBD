//
//  File.swift
//  apple pie
//
//  Created by Steven Newman on 10/4/22.
//

import Foundation


struct Game
{
    var word: String
    var incorrectMovesRemaining: Int = 7
    var guessedLetters: [Character]

    
    
    mutating func playerGuessed(letter: Character)
        {
        guessedLetters.append(letter)
        if !word.contains(letter)
            {
            incorrectMovesRemaining -= 1
            }
        }



var formatterWord: String {
    var guessedWord = ""
    for letter in word {
        if guessedLetters.contains(letter) {
            guessedWord += "\(letter)"
        } else {
            guessedWord += "_"
        }
    }
    return guessedWord
    }
}
