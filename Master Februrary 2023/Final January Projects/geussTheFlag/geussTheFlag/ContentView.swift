//
//  ContentView.swift
//  geussTheFlag
//
//  Created by Steven Newman on 1/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var num = 0
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)

    var body: some View {
        
       
        ZStack {
            
            LinearGradient(gradient: Gradient(stops: [
                Gradient.Stop(color: .blue , location: 0.45),
                Gradient.Stop(color: .black, location: 0.55)
            ]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
            
            VStack {
                Spacer()

                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)

                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))

                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }

                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 30)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 100))

                Spacer()
                Spacer()

                Text("Score: \(scoreTitle)")
                    .foregroundColor(.white)
                    .font(.title.bold())

                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(scoreTitle)")
        }
    }

    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            num += 1
            scoreTitle = "\(num)"
            
        } else {
            scoreTitle = "Wrong"
            num -= 1
        }

        showingScore = true
    }

    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
