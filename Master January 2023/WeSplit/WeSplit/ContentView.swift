//
//  ContentView.swift
//  WeSplit
//
//  Created by Steven Newman on 1/9/23.
//

import SwiftUI

struct ContentView: View
{
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 1
    @State private var tipPercentage = 20
   
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View
    {
        NavigationView {
            Form {
                Section {
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                    Text("TIP -")
                    Picker("Tip percent", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section {
                    Picker("NOP", selection: $numberOfPeople ) {
                            ForEach(0..<17) {
                                Text("\($0) persons")
                            }
                        }
                }
                
                Section {
                    
                    VStack {
                        Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD" ))
                            .padding(20)
                    }
                    Text("+ Tip")
                    
                    let tip: Double = checkAmount * (Double(tipPercentage) / 100)
                    let totalWithTip = checkAmount + tip
                    VStack {
                        Text("\(totalWithTip)")
                            .padding(20)
                    }
                    Text("Split Between \(numberOfPeople)")
                    let people = Double(numberOfPeople)
                    VStack {
                        Text("\(totalWithTip / people)")
                            .padding(20)
                    }
                    
//                    Text(checkAmount * (Double(tipPercentage / 100)), format: .number)
                }
            }
            .navigationTitle("WeSplit")
        }
    }
}


struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}

//
//struct ContentView: View
//{
//    let students = ["Steven", "Jacob", "Zander"]
//    @State private var selectedStudent = "Steven"
//
//
//    var body: some View
//    {
//        NavigationView
//        {
//            Form
//            {
//                Picker("Select your student", selection: $selectedStudent)
//                {
//                    ForEach(students, id: \.self)
//                    { student in
//                        Text(student)
//                    }
//                }
//            }
//        }
//    }
//}
