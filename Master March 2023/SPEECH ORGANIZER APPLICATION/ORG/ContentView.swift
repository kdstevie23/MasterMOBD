import SwiftUI

import SwiftUI

struct ContentView: View {
    @State var cellLists: [[Cell]] = [[Cell(name: "")]]
    @State var nextCellNumber: Int = 2
    @State var isExpanded: [Bool] = [true]
    @State var catName: String = ""
    @State var clickCount: Int = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                ForEach(cellLists.indices, id: \.self) { listIndex in
                    VStack {
                        HStack {
                            TextField("Category \(listIndex + 1)", text: $cellLists[listIndex][0].name)
                                .font(.title2)
                                .fontWeight(.bold)
                                .onTapGesture {
                                    clickCount += 1
                                    if clickCount % 2 == 0 {
                                        isExpanded[listIndex].toggle()
                                    }
                                }
                            Spacer()
                        }
                        if isExpanded[listIndex] {
                            List {
                                ForEach(cellLists[listIndex].indices, id: \.self) { cellIndex in
                                    if cellIndex == 0 {
                                        TextEditor(text: $cellLists[listIndex][cellIndex].name)
                                            .frame(maxHeight: .infinity, alignment: .center)
                                            .disabled(true)
                                            .opacity(0.5)
                                    } else {
                                        NavigationLink(destination: SecondView(cell: $cellLists[listIndex][cellIndex], cells: $cellLists[listIndex])) {
                                            CellView(cell: $cellLists[listIndex][cellIndex])
                                        }
                                    }
                                }
                                Button(action: {
                                    cellLists[listIndex].append(Cell(name: ""))
                                }) {
                                    Text("Add Topic")
                                }
                            }
                        }
                    }
                }
                Button(action: {
                    cellLists.append([Cell(name: "")])
                    isExpanded.append(true)
                    nextCellNumber += 1
                }) {
                    Text("Add Category")
                }
            }
            .padding()
            .navigationTitle("Public Speaking APP")
        }
    }
}

struct Cell: Identifiable {
    let id = UUID()
    var name: String
    var sections: [Section] = [Section(title: "Section 1", items: [])]
}

struct Section: Identifiable {
    let id = UUID()
    var title: String
    var items: [Item]
}

struct Item: Identifiable {
    let id = UUID()
    var name: String
}

struct CellView: View {
    @Binding var cell: Cell
    
    var body: some View {
        TextField("Name", text: $cell.name)
            .transition(.opacity) // Add opacity transition
    }
}

struct SecondView: View {
    @Binding var cell: Cell
    @Binding var cells: [Cell]
    @State var sections: [Section]
    @State var sectionCount = 1 // New property to keep track of section count

    init(cell: Binding<Cell>, cells: Binding<[Cell]>) {
        _cell = cell
        _cells = cells
        _sections = State(initialValue: cell.wrappedValue.sections)
    }

    var body: some View {
        VStack {
            Text("\(cell.name)")
            List {
                ForEach(sections.indices, id: \.self) { index in
                    NavigationLink(destination: ThirdView(section: $sections[index])) {
                        TextField("Section Title", text: $sections[index].title)
                    }
                }
                Button(action: {
                    sectionCount += 1 // Increment section count
                    sections.append(Section(title: "Section \(sectionCount)", items: []))
                }) {
                    Text("Add Section")
                }
            }
        }
        .navigationTitle("Sections")
        .navigationBarItems(trailing: Button("Save") {
            cell.sections = sections
        })
    }
    
    func deleteSections(at offsets: IndexSet) {
        sections.remove(atOffsets: offsets)
        if sections.isEmpty {
            sections.append(Section(title: "Section 1", items: [Item(name: "Item 1"), Item(name: "Item 2")]))
        }
        cell.sections = sections
    }
    
    func moveSections(from source: IndexSet, to destination: Int) {
        sections.move(fromOffsets: source, toOffset: destination)
        cell.sections = sections
    }
}

struct ThirdView: View {
    @Binding var section: Section
    @State var newItemName = ""

    var body: some View {
        List {
            ForEach(section.items) { item in
                Text(item.name)
            }
            
            .disabled(newItemName.isEmpty)
            HStack {
                TextField("New Item Name", text: $newItemName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    section.items.append(Item(name: newItemName))
                    newItemName = ""
                }) {
                    Image(systemName: "plus.circle")
                }
                .disabled(newItemName.isEmpty)
            }
        }
        .navigationTitle(section.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
