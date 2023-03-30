//
//  ContentView.swift
//  testing
//
//  Created by Steven Newman on 3/30/23.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}
   
struct ContentView: View {
    @State var data: [[String]] = [["Cell 1"], ["Cell 2"]]
    @State var isSectionHidden: [Bool] = [false, false]
    @State var profileCellTitle: String = "Profile Cell"

    var body: some View {
        TabView {
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
                        }, label: {
                            Text("Section \(sectionIndex + 1)")
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
                        profileCellTitle = savedData.joined(separator: " | ")
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
            VStack {
                Spacer()
                List {
                    TextField("Enter title", text: $profileCellTitle)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50)
                }
                Spacer()
                Button("New Cell") {
                    data = [["Cell 1"]]
                    isSectionHidden = [false]
                    profileCellTitle = "Profile Cell"
                    if isSectionHidden.count > 1 {
                        isSectionHidden.removeLast()
                    }
                }
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
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
