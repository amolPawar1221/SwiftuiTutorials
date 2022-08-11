//
//  ListViewBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 10/07/22.
//

import SwiftUI

struct ListViewBootcamp: View {


    @State var fruits = ["Apple", "orange", "banana", "peach", "mango"]
    @State var veggies = ["tommato", "potato", "carrot"]

    var body: some View {
        NavigationView {
            List {
                Section(header:
                            HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }
                            .font(.headline)
                            .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.pink)
                }
                Section(header: Text("veggies")) {
                    ForEach(veggies, id: \.self) { veg in
                        Text(veg.capitalized)
                    }
                }
            }
            .accentColor(.red)
            .listStyle(.sidebar)
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        fruits.append("Coconut")
                    }
                }
            }
        }
    }

    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }

    func move(formOffSets: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: formOffSets, toOffset: newOffset)
    }
}

struct ListViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListViewBootcamp()
    }
}
