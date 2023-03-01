//
//  ContentView.swift
//  mathProblem
//
//  Created by Steven Newman on 2/8/23.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var multiplicationChoice = 2
    @State private var multiplicationNumbers = 2...20
    @State private var keepTrackOfQuestions = 1
    @State private var title = "Math Game"
    @State private var scoreKeeper = 0

    @State private var tableSelections = false
    @State private var buttonPushed = false
    @State private var keepMath = ""
    @State private var keepData = ""
    @State private var questionAmount = "5"
    @State private var numberOfquestions = ["5", "10", "15"]
    @State private var numGoesUp = 2
    
    var body: some View {
        NavigationView {
            ZStack {
                
                
                HStack (alignment: .center, spacing: 10){
                    Section {
                        Text(keepMath)
                            .opacity(tableSelections ? 1 : 0)
                        
                        
                        TextField("answer here", text: $keepData)
                            .opacity(tableSelections ? 1 : 0)
                        
                        Button ("Enter") {
                            buttonPushed = true
                            
                            if buttonPushed == true {
                                math()
                                buttonPushed = false
                                    
                                
                            }
                        }
                        .opacity(tableSelections ? 1 : 0)
                        
//                        .toolbar {
//
//                            ToolbarItem(placement: .principal) {
//                                Text(title)
//                                    .font(.largeTitle.bold())
//                                    .accessibilityAddTraits(.isHeader)
//
//                            }
//
//                        }
                        
                    }
                    
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                }
                VStack {
                    Text(title).font(.largeTitle).bold()
                    Picker("Choose multiplication", selection: $multiplicationChoice) {
                        ForEach(multiplicationNumbers, id: \.self) {
                            Text("\($0)")
                            
                        }
                        .opacity(tableSelections ? 0 : 1)
                        
                    }
                    
                    
                    .pickerStyle(.wheel)
                    
                    
                    
                    Text(" ")
                    
                    
                    Picker("Questions", selection:$questionAmount) {
                        ForEach(numberOfquestions, id: \.self) {
                            Text("\($0) questions")
                                .opacity(tableSelections ? 0 : 1)
                        }
                        
                    }
                    .pickerStyle(.segmented)
                    .opacity(tableSelections ? 0 : 1)
                    Text(" ")
                    
                    Text("Score: \(scoreKeeper)")
                        .opacity(tableSelections ? 1 : 0)
                    
                    Button("PRESS HERE") {
                        settings()
                        math()
                    }
                    
                    .disabled(tableSelections ? true : false)
                    .frame(width: 200, height: 50)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color("black"), Color("black"), Color("black")]), startPoint: .top, endPoint: .bottom)
                    )
                    .clipShape(Rectangle())
                    .font(.system(size: 30))
                    .border(.purple)
                    .buttonBorderShape(.roundedRectangle)
                    .opacity(tableSelections ? 0 : 1)
                    
                    Spacer()
                }
            }
        }
    }
    
    func settings() {
        
        
        switch multiplicationChoice {
        case 2:
            switch questionAmount {
            case "5":
                tableSelections.toggle()
            case "10":
                tableSelections.toggle()
            case "20":
                tableSelections.toggle()
            default:
                print("This is the wrong VALUE -> \(questionAmount) ")
            }
        case 3:
            switch questionAmount {
            case "5":
                tableSelections.toggle()
            case "10":
                tableSelections.toggle()
            case "20":
                tableSelections.toggle()
            default:
                print("This is the wrong VALUE -> \(questionAmount) ")
            }
        case 4:
            switch questionAmount {
            case "5":
                tableSelections.toggle()
            case "10":
                tableSelections.toggle()
            case "20":
                tableSelections.toggle()
            default:
                print("This is the wrong VALUE -> \(questionAmount) ")
            }
        case 5:
            switch questionAmount {
            case "5":
                tableSelections.toggle()
            case "10":
                tableSelections.toggle()
            case "20":
                tableSelections.toggle()
            default:
                print("This is the wrong VALUE -> \(questionAmount) ")
            }
        case 6:
            switch questionAmount {
            case "5":
                tableSelections.toggle()
            case "10":
                tableSelections.toggle()
            case "20":
                tableSelections.toggle()
            default:
                print("This is the wrong VALUE -> \(questionAmount) ")
            }
        case 7:
            switch questionAmount {
            case "5":
                tableSelections.toggle()
            case "10":
                tableSelections.toggle()
            case "20":
                tableSelections.toggle()
            default:
                print("This is the wrong VALUE -> \(questionAmount) ")
            }
        case 8:
            switch questionAmount {
            case "5":
                tableSelections.toggle()
            case "10":
                tableSelections.toggle()
            case "20":
                tableSelections.toggle()
            default:
                print("This is the wrong VALUE -> \(questionAmount) ")
            }
            switch questionAmount {
            case "5":
                tableSelections.toggle()
            case "10":
                tableSelections.toggle()
            case "20":
                tableSelections.toggle()
            default:
                print("This is the wrong VALUE -> \(questionAmount) ")
            }
        case 10:
            switch questionAmount {
            case "5":
                tableSelections.toggle()
            case "10":
                tableSelections.toggle()
            case "20":
                tableSelections.toggle()
            default:
                print("This is the wrong VALUE -> \(questionAmount) ")
            }
        case 11:
            switch questionAmount {
            case "5":
                tableSelections.toggle()
            case "10":
                tableSelections.toggle()
            case "20":
                tableSelections.toggle()
            default:
                print("This is the wrong VALUE -> \(questionAmount) ")
            }
        case 12:
            switch questionAmount {
            case "5":
                tableSelections.toggle()
            case "10":
                tableSelections.toggle()
            case "20":
                tableSelections.toggle()
            default:
                print("This is the wrong VALUE -> \(questionAmount) ")
        
        }
    case 13:
        switch questionAmount {
        case "5":
            tableSelections.toggle()
        case "10":
            tableSelections.toggle()
        case "20":
            tableSelections.toggle()
        default:
            print("This is the wrong VALUE -> \(questionAmount) ")
    }
case 14:
    switch questionAmount {
    case "5":
        tableSelections.toggle()
    case "10":
        tableSelections.toggle()
    case "20":
        tableSelections.toggle()
    default:
        print("This is the wrong VALUE -> \(questionAmount) ")
}

case 15:
    switch questionAmount {
    case "5":
        tableSelections.toggle()
    case "10":
        tableSelections.toggle()
    case "20":
        tableSelections.toggle()
    default:
        print("This is the wrong VALUE -> \(questionAmount) ")
}

case 16:
    switch questionAmount {
    case "5":
        tableSelections.toggle()
    case "10":
        tableSelections.toggle()
    case "20":
        tableSelections.toggle()
    default:
        print("This is the wrong VALUE -> \(questionAmount) ")
}

case 17:
    switch questionAmount {
    case "5":
        tableSelections.toggle()
    case "10":
        tableSelections.toggle()
    case "20":
        tableSelections.toggle()
    default:
        print("This is the wrong VALUE -> \(questionAmount) ")
}

case 18:
    switch questionAmount {
    case "5":
        tableSelections.toggle()
    case "10":
        tableSelections.toggle()
    case "20":
        tableSelections.toggle()
    default:
        print("This is the wrong VALUE -> \(questionAmount) ")
}
case 19:
    switch questionAmount {
    case "5":
        tableSelections.toggle()
    case "10":
        tableSelections.toggle()
    case "20":
        tableSelections.toggle()
    default:
        print("This is the wrong VALUE -> \(questionAmount) ")
    }
case 20:
    switch questionAmount {
    case "5":
        tableSelections.toggle()
    case "10":
        tableSelections.toggle()
    case "20":
        tableSelections.toggle()
    default:
        print("This is the wrong VALUE -> \(questionAmount) ")
    }
default:
    print("Error occured. unable to recognize number")
}


    }
    func math() {
        switch multiplicationChoice {
        case 2:
            checkQuestions()
        case 3:
            checkQuestions()
        case 4:
            checkQuestions()
        case 5:
            checkQuestions()
        case 6:
            checkQuestions()
        case 7:
            checkQuestions()
        case 8:
            checkQuestions()
        case 9:
            checkQuestions()
        case 10:
            checkQuestions()
        case 11:
            checkQuestions()
        case 12:
            checkQuestions()
        default:
            checkQuestions()
        }
        
    }
    
    
    func holdingData() {
        
        let multiplication = (multiplicationChoice * numGoesUp)
        
        
        
        if keepMath.isEmpty {
            keepMath = ("\(multiplicationChoice) X \(numGoesUp) = ")
            
        } else if Int(multiplication) == Int(keepData) {
            title = "Win"
            scoreKeeper += 1
            numGoesUp += 1
            keepData = ""
            keepTrackOfQuestions += 1
        } else if keepTrackOfQuestions == Int(questionAmount) {
            title = ("score = \(numGoesUp)")
        } else if keepTrackOfQuestions != Int(questionAmount){
            title = "Wrong"
            keepData = ""
            keepTrackOfQuestions += 1
            numGoesUp += 1
        }
        keepMath = ("\(multiplicationChoice) X \(numGoesUp) = ")
        
    }
    func checkQuestions() {
        if questionAmount !=  String(keepTrackOfQuestions) {
            
            holdingData()
        } else {
            title = "Play Again?"
            tableSelections.toggle()
            keepMath = ""
            numGoesUp = 2
            keepData = ""
            keepTrackOfQuestions = 1
            scoreKeeper = 0
            
            return
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}























