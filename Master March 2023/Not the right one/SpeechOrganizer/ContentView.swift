import SwiftUI

struct ContentView: View {
    
    @State var data: [[String]] = [["Original Cell"]]
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    // Clear all data and set it back to just the original cell
                    self.data = [["Original Cell"]]
                }) {
                    Text("Clear All")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
            }.padding()
            List {
                ForEach(0..<data.count, id: \.self) { sectionIndex in
                    Section {
                        ForEach(0..<data[sectionIndex].count, id: \.self) { rowIndex in
                            VStack {
                                HStack {
                                    Text(data[sectionIndex][rowIndex])
                                    Spacer()
                                    Button(action: {
                                        // Add a new cell underneath this one
                                        data[sectionIndex].insert("New Cell", at: rowIndex + 1)
                                    }) {
                                        Text("ADDBUTTON")
                                    }
                                }
                                if rowIndex < data[sectionIndex].count - 1 {
                                    Button(action: {
                                        // Hide/show all cells underneath this one
                                        withAnimation {
                                            data[sectionIndex][rowIndex + 1...].toggle()
                                        }
                                    }) {
                                        Text("Hide/Show Cells")
                                    }
                                    .padding(.leading, 20)
                                    .foregroundColor(.blue)
                                    .background(Color.gray.opacity(0.3))
                                    .cornerRadius(10)
                                    .padding(.vertical, 5)
                                    .opacity(rowIndex < data[sectionIndex].count - 1 ? 1 : 0)
                                }
                            }
                        }
                    }
                }
            }
            Button(action: {
                // Add a new section with a new cell
                data.append(["New Cell"])
            }) {
                Text("Add New Section")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

extension Array where Element == String {
    mutating func toggle() {
        if self.count > 1 {
            if self[1] == "" {
                self.remove(at: 1)
            } else {
                self.insert("", at: 1)
            }
        }
    }
}
