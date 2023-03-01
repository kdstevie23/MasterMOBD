//
//  ContentView.swift
//  rockpaperScizzors
//
//  Created by Steven Newman on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var moves = ["Rock", "Paper", "Scissors"]
    @State private var showingScore = false
    @State private var winningChoice = Sign.self
    @State private var score = 0
    @State private var scoreTitle = ""
    @State private var botChoice = Int.random(in: 0..<3)
    @State private var winOrLose = ["win", "lose"]
    
    
    @State private var wol = Int.random(in: 0..<2)
    
    
    @State private var userChoice = ["Rock", "Paper", "Scissors"]
    @State private var wantsTo = ""
    
    
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack() {
                Spacer()
                
                Spacer()
                
                VStack(spacing: 15) {
                    Spacer()
                    VStack {
                        Text("Rock, Paper, Scissors")
                            .foregroundStyle(.secondary)
                            .font(.largeTitle.weight(.bold))
                            .foregroundColor(.white)
                        
                        Spacer()
                        Text("This round, you should try to")
                            .foregroundColor(.white)
                        
                        Text("\(wantsTo)")
                            .foregroundColor(.white)
                            .foregroundStyle(.secondary)
                            .font(.largeTitle)
                        
                        Spacer()
                        
                        Text("Bot's Choice: \(userChoice[botChoice])")
                        
                            .font(.largeTitle.weight(.semibold))
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Text("Your Choice:")
                        
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            choiceTapped(number)
                            botChoice = Int.random(in: 0..<3)
                            wol = Int.random(in: 0..<2)
                        } label: {
                            Text(moves[number])
                                .clipShape(Capsule())
                            
                            
                        }
                        
                    }
                    
                    
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .background(.regularMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    Spacer()
                    Spacer()
                    
                    Text("Score: \(score)")
                        .foregroundColor(.black)
                        .font(.title.bold())
                    Spacer()
                }
                .padding()
                
            }
            
            .alert(scoreTitle, isPresented: $showingScore) {
                Button("Continue", action: makeYourMove)
            } message: {
                Text("Your score is \(score)")
                
            }
            
        }
        
    }
    
    func choiceTapped(_ number: Int) {
        
        
        if wol == 1 {
            wantsTo = "Lose"
            if number == botChoice {
                scoreTitle = "Draw"
            } else if number == 0 && botChoice == 2 || number == 1 && botChoice == 0 || number == 2 && botChoice == 1
            {
                scoreTitle = "Lose (this round u wanted to lose)"
                score -= 1
            } else {
                scoreTitle = "Win"
                score += 1
            }
            showingScore = true
        }
        
        
        if wol == 0 {
            wantsTo = "Win"
            if number == botChoice {
                scoreTitle = "Draw"
            } else if number == 0 && botChoice == 2 || number == 1 && botChoice == 0 || number == 2 && botChoice == 1
            {
                scoreTitle = "Win"
                score += 1
            } else {
                scoreTitle = "Lose"
                score -= 1
            }
            showingScore = true
        }
    }
    
    
    func makeYourMove() {
        botChoice = [botChoice].randomElement()!
    }
    
    
    enum GameState {
        case win, lose, draw
    }
    
    
    enum Sign {
        case rock, paper, scissors
        
        var emoji: String {
            switch self {
            case .rock: return "👊"
            case .paper: return "✋"
            case .scissors: return "✌️"
            }
        }
        
        
        
        func beats(otherSign: Sign) -> GameState {
            switch (self, otherSign) {
            case (.rock, .rock):     return .draw
            case (.rock, .paper):    return .lose
            case (.rock, .scissors): return .win
                
            case (.paper, .rock):     return .win
            case (.paper, .paper):    return .draw
            case (.paper, .scissors): return .lose
                
            case (.scissors, .rock):     return .lose
            case (.scissors, .paper):    return .win
            case (.scissors, .scissors): return .draw
            }
        }
    }
    
    //if the bot says you need to win, you should have the switch statement for:
    //rock beats scissors, paper beats rock, scissors beats paper
    //if the bot says you need to lose, you should have the switch statement for:
    //rock loses to paper, paper loses to scissors, scissors loses to rock.
    
    
    //func userShouldWin (){
    //    if userChoice == "Rock" && botChoice == "Paper" {
    //some code here
    //    } else if userChoice == "Paper" && botChoice == "Scissors"{
    // some code here
    //    } else if userChoice == "Scissors" && botChoice == "Rock" {
    //some code here
    //    } else {
    //        //lose point
    //    }
    //}
    //
    //func userShouldLose() {
    //    if botChoice == "Rock" && userChoice == "Scissors" {
    //some code here
    //    } else if botChoice == "Paper" && userChoice == "Rock" {
    // some code here
    //    } else if botChoice == "Scissors" && userChoice == "Paper" {
    //some code here
    //    } else {
    //        lose point
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
