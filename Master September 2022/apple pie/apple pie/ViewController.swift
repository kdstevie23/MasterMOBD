//
//  ViewController.swift
//  apple pie
//
//  Created by Steven Newman on 10/4/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view.
    }
    var currentGame: Game!
    
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    
    
    func updateUI() {
        correctWordLabel.text = currentGame.formatterWord
        scoreLabel.text = ("Wins: \(totalWins), Losses: \(totalLosses)")
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        
        var letters = [String]()
        for letter in currentGame.formatterWord {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    
    
    
    var listOfWords = ["player", "cow", "dog", "cat", "walrus", "smile"]
    let incorrectMovesAllowed = 7
    
    
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    
    func newRound()
    {
        if !listOfWords.isEmpty
        {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining:
                                incorrectMovesAllowed, guessedLetters: [])
            enableLetterButtons(true)
            updateUI()
        } else
        {
            enableLetterButtons(false)
        }
    }
    
    
    func enableLetterButtons(_ enable: Bool) {
        for button in letterButtons {
            button.isEnabled = enable
        }
    }
    
    
    @IBAction func letterButtonPressed(_ sender: UIButton)
    {
        
        sender.isEnabled = false
        let letterString = sender.configuration!.title!
        //            .title(for: .normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
    func updateGameState()
    {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        } else if currentGame.word == currentGame.formatterWord {
            totalWins += 1
        } else {
            updateUI()
        }
    }
}

