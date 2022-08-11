//
//  ListViewApple.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 10/07/22.
//

import SwiftUI

struct Ocean: Identifiable, Hashable {
    let name: String
    let id = UUID()
}

struct ListViewApple: View {

    @State private var multiselection = Set<UUID>()

    var oceans = [
        Ocean(name: "Pacific"),
        Ocean(name: "Atlantic"),
        Ocean(name: "Indian"),
        Ocean(name: "Southern"),
        Ocean(name: "Arctic")
    ]
    var body: some View {
//        List {
//            Text("A List Item")
//            Text("A secod List Item")
//            Text("A Third List Item")
//        }

        NavigationView {
            List(oceans, selection: $multiselection) { ocean in
                Text(ocean.name)
            }
            .navigationTitle("Oceans")
            .toolbar {
                EditButton()
            }
        }
        Text("\(multiselection.count) selections")
    }
}

struct ListViewApple_Previews: PreviewProvider {
    static var previews: some View {
        ListViewApple()
    }
}
