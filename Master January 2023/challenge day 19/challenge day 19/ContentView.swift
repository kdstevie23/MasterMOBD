//
//  ContentView.swift
//  challenge day 19
//
//  Created by Steven Newman on 1/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var time = 0.0
    @State private var timeConvert = "hours"
    @State private var selected = 0
   
    let timeOptions = ["seconds", "minutes", "hours", "days"]
    
    var output: Double {
        print("made it")
        let input = time
        let num = calledTimer()
        return input * Double(num)
    }
    
    
//    var timer: String = "days"
//
    func calledTimer() -> Int {
       
        switch timeConvert {
        case "days":
            return 1
        case "hours":
            return 24
        case "minutes":
            return 24 * 60
        case "seconds":
            return (24 * 60) * 60
        default:
            return 1
        }
    }
    

//    switch timeConvert {
//
//        let seconds: Double = 1
//        let minutes: Double = seconds * 60
//        let hours: Double = minutes * 60
//        let days: Double = hours * 24
//
//
//    case "minutes":
//        selected = minutes
//
//    case hours
//        print("You're a rising star")
//
//    case days
//        print("You're world famous!")
//
//    default:
//        print("Have you done something new?")
//    }
//
//
    var body: some View {
        NavigationView{
            Form {
                Section {
                    
                    Text("Timer in days")
                    TextField("Time", value: $time, format: .number)
                    
                    Picker("Converted with", selection: $timeConvert) {
                        ForEach(timeOptions, id: \.self) {
                  
                            Text($0)
                            
                            
                            
                            
//                            let seconds: Double = 1
//                            let minutes: Double = seconds * 60
//                            let hours: Double = minutes * 60
//                            let days: Double = hours * 24

//                            switch $0 {
//                            case 0:
//                               Text("seconds")
//                            case 1:
//                               Text("minutes")
////                                timeConvert = "minutes"
//                            case 2:
//                                Text("hours")
////                                timeConvert = "hours"
//                            case 3:
//                                Text("days")
////                                timeConvert = "days"
//                            default:
//                                Text("Error")
//                            }
                            
                        }
                        .pickerStyle(.segmented)
                    }
                    
                    
                    

//                        if timeConvert == "minutes" {
//                            selected = minutes
//                        } else if times == "hours" {
//                            selected = hours
//                        } else if times == "days" {
//                            selected = days
//                        } else
//                        { selected = seconds
//                        }
////
//                    let convertedTime = time * Double(selected)
                    Text(output, format: .number)
                }
                .navigationTitle("Time Converter")
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
