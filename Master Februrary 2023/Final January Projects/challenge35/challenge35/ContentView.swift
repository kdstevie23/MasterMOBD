//
//  ContentView.swift
//  challenge35
//
//  Created by Steven Newman on 2/7/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var title = "THE MATH GAME!"
    @State private var multiplicationChoice = 5
    @State private var multiplicationNumbers = 2...20


    
    
    var body: some View {
        
        
        
        VStack {
            
            Text(title).font(.largeTitle).bold
            Picker("Choose Multiply By", selection: $multiplicationChoice) {
                ForEach
                (multiplicationNumbers, id: \.self {
                        Text("\($0)")
                    }
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
