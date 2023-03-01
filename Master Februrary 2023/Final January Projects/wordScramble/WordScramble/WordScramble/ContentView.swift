//
//  ContentView.swift
//  WordScramble
//
//  Created by Steven Newman on 2/8/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var showingError = false
    
    
    
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    TextField("Enter Text", text: $newWord)
                        .autocapitalization(.none)
                }
                Section {
                    ForEach(usedWords, id: \.self) {word in
                        HStack {
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                        }
                    }
                }
            }
            .navigationTitle(rootWord)
            
            .onSubmit(addNewWord)
            .onAppear(perform: startGame)
            .alert(errorTitle, isPresented: $showingError) {
                Button("OK", role: .cancel) {}
            } message: {
                Text(errorMessage)
            }
        }
    }
    
    
    
    func addNewWord() {
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        guard answer.count > 0 else {
            return
            
        }
        
        guard isOriginal(word: answer) else {
            wordError(title: "WORD USED ALREADY", message: "BE MORE ORIGINAL")
            return
        }
        
        
        guard isPossible(word: answer) else { wordError(title: " WORD NO POSSIBLE " , message: "YOU CANT SPELL THAT from '\(rootWord)'")
            return
        }
        
        guard isReal(word: answer) else {
            wordError(title: "WORD NOT RECOGNIZED", message: "DURRRR")
            return
        }
        
        
        withAnimation {
            usedWords.insert(answer, at: 0)
        }
        newWord = ""
    }
    
    
    
    func startGame() {
        
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL) {
                let allWords = startWords.components(separatedBy: "\n")
                rootWord = allWords.randomElement() ?? "silkWorm"
                return
            }
        }
        //wifi went down so wasnt able to pull up the txt file. silkworm it is!
       // fatalError("Could not load txt file")
    }
    func isOriginal(word: String) -> Bool {
        !usedWords.contains(word)
    }
    
    
    func isPossible(word: String) -> Bool {
        var tempWord = rootWord
        
        
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
            }
        }
        
        return true
    }
    
    
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let mispelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        
        return mispelledRange.location == NSNotFound
    }
    
    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        showingError = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




//
//
//func test() {
//
//    let word = "swift"
//    let checker = UITextChecker()
//
//    let range = NSRange(location: 0, length: word.utf16.count)
//
//    let missSpelledRage = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
//
//    let allgood = missSpelledRage.location == NSNotFound
//
//    let input = """
//a
//b
//c
//"""
//
//    let letters = input.components(separatedBy: "\n")
//    let letter = letters.randomElement()
//
//    let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)

