
//  ContentView.swift
//  testing
//
//  Created by Steven Newman on 3/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var profileCellTitle: String = "Profile Cell"
    @State private var showListTab: Bool = false
    @State private var listTabData: [[String]] = []
    @State private var isListTabSectionHidden: [Bool] = []
    @State private var savedListData: [String] = []
    @State private var selection = 0
       
       // Section 2
       @State private var data: [[String]] = [["Cell 1"], ["Cell 2"]]
       @State private var isSectionHidden: [Bool] = [false, false]
       @State private var arrow: [String] = ["▽", "△"]
       @State private var selectedArrow: String = "test"
       
       // Section 3
       @State private var thirdTabText: String = "Third Tab"
       
    struct ProfileCell: View {
        @Binding var profileCellTitle: String
        var body: some View {
            HStack {
                TextField("Enter title", text: $profileCellTitle)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 50)
            }
            .frame(height: 50)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 2)
            .padding(.horizontal)
        }
    }
    
    
    var body: some View {
        TabView(selection: $selection) {
            // Profile Tab
            VStack {
                ZStack {
                    ProfileCell(profileCellTitle: $profileCellTitle)
                        .onTapGesture {
                            print("click")
                            showListTab = true
                        }
                    Color.clear // add an invisible view to capture the tap gestures
                        .contentShape(Rectangle())
                        .onTapGesture {
                            showListTab = true
                        }
                }
                Spacer()
                HStack {
                    Button("reset") {
                        data = [["Cell 1"]]
                        isSectionHidden = [false]
                        profileCellTitle = "Profile Cell"
                        if isSectionHidden.count > 1 {
                            isSectionHidden.removeLast()
                        }
                        showListTab = true
                    }
                    .padding(.trailing, 50)
                    Button("Update") {
                        // Add your code to update the profile cell here
                    }
                }
                .padding(.bottom, 10)
                
                Button("CREATE NEW CELL") {
                    data.append(["Cell \(data.count + 1)"])
                    isSectionHidden.append(false)
                }
            }
            .frame(height: 100)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            .padding()
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }

            
            // List Tab
            // List Tab
            VStack {
                HStack {
                    Spacer()
                    Button("Add Section") {
                        data.append(["Cell \(data.count + 1)"])
                        isSectionHidden.append(false)
                    }
                }
                List {
                    ForEach(data.indices, id: \.self) { sectionIndex in
                        Section(header:
                                    Button(action: {
                            
                            isSectionHidden[sectionIndex].toggle()
                            selectedArrow = "\(arrow)"
                            if arrow == ["▽"] {
                                
                            }
                        }, label: {
                            Text("Section \(sectionIndex + 1) ")
                        })
                        ) {
                            ForEach(data[sectionIndex].indices, id: \.self) { rowIndex in
                                if !isSectionHidden[sectionIndex] && rowIndex == 0 {
                                    Button(action: {
                                        addNewCell(sectionIndex: sectionIndex)
                                    }, label: {
                                        Text("NEW CELL")
                                    })
                                    .buttonStyle(BorderlessButtonStyle())
                                    .padding(.vertical, 8)
                                }
                                if !isCellHidden(sectionIndex: sectionIndex, rowIndex: rowIndex) {
                                    VStack {
                                        Spacer()
                                        TextField("Enter text", text: Binding(
                                            get: {
                                                data[sectionIndex][rowIndex]
                                            },
                                            set: {
                                                data[sectionIndex][rowIndex] = $0
                                            }
                                        ))
                                        .multilineTextAlignment(rowIndex == 0 ? .leading : .center) // set the alignment based on the row index
                                        .frame(maxWidth: .infinity) // set the frame to occupy the entire width of the cell
                                        Spacer()
                                    }
                                }
                            }
                        }
                    }
                    Button("Save") {
                        let savedData = data.flatMap { $0 }
                        savedListData = savedData // store the saved data in a separate array
                        selection = 0 // switch to Profile tab
                    }
                }
                .onAppear {
                    // update the profile cell title with the saved data if the List tab was previously selected
                    if selection == 1 {
                        profileCellTitle = savedListData.joined(separator: " | ")
                    }
                }
                Spacer()
                HStack {
                    Spacer()
                    Button("Reset") {
                        data = [["Cell 1"]]
                        isSectionHidden = Array(repeating: true, count: data.count)
                        isSectionHidden[0] = false
                    }
                }
            }
            .tabItem {
                Image(systemName: "list.dash")
                Text("List")
            }

            
            // Documents Tab
            VStack {
                Spacer()
                Text("Third Tab")
                Spacer()
            }
            .tabItem {
                Image(systemName: "doc.fill")
                Text("Documents")
            }
        }
    }

    func toggleCellsBelow(sectionIndex: Int, rowIndex: Int) {
        let cellsBelow = data[sectionIndex].indices.dropFirst(rowIndex + 1)
        let shouldShowCells = cellsBelow.map { !self.isCellHidden(sectionIndex: sectionIndex, rowIndex: $0) }
        data[sectionIndex].replaceSubrange(cellsBelow, with: shouldShowCells.isEmpty ? [] : Array(repeating: "New Cell", count: shouldShowCells.count))
    }

    func isCellHidden(sectionIndex: Int, rowIndex: Int) -> Bool {
        return rowIndex > 0 && isSectionHidden[sectionIndex]
    }

    func addNewCell(sectionIndex: Int) {
        data[sectionIndex].append("New Cell")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
