//
//  ContentView.swift
//  betterRest2
//
//  Created by Steven Newman on 2/7/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    var body: some View {
        NavigationView {
            VStack {
                
                Text("When do you wanna wake up")
                    .font(.headline)
                DatePicker("Please enter date", selection: $wakeUp, displayedComponents:
                        .hourAndMinute)
                .labelsHidden()
                Text("Desired amount of sleep")
                    .font(.headline)
                
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25 )
                
                Text("Daily coffee intake")
                    .font(.headline)
                
                Stepper(coffeeAmount == 1 ? "1 cup" : "\(coffeeAmount) cups", value: $coffeeAmount, in: 1...20)
                //                Text(Date.now.formatted(date: .long, time:  .omitted))
                //                .padding()
            }
            .navigationTitle("Better Rest")
            .toolbar {
                Button("Calculate", action: calculateBedtime)
            }
        }
    }
        func calculateBedtime() {
    }
}

func trivialExample() {
    
    
//    var components = DateComponents()
    
    let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
    let hour = components.hour ?? 0
    let minute = components.minute ?? 0
    
    
//    components.hour = 8
//    components.minute = 0
//    let date = Calendar.current.date(from: components) ?? Date.now
    
    
//    let now = Date.now
//    let tomorrow = Date.now.addingTimeInterval(86400)
//    let range = now...tomorrow
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}