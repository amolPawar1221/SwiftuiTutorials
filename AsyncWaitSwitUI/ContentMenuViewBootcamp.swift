//
//  ContentMenuViewBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 11/07/22.
//

import SwiftUI

struct ContentMenuViewBootcamp: View {
    var body: some View {
        VStack {
            Menu("Menu") {
                ForEach(1..<10) { value in
                    Text("\(value)")
                }
            }

            Menu("Actions") {
                    Button("Duplicate", action: {})
                    Button("Rename", action: {})
                    Button("Delete…", action: {})
                    Menu("Copy") {
                        Button("Copy", action: {})
                        Button("Copy Formatted", action: {})
                        Button("Copy Library Path", action: {})
                    }
                }

            Menu("Editing") {
                    Button("Set In Point", action: {})
                     Button("Set Out Point", action: {})
                 }
            .menuStyle(.automatic)
        }
    }
}

struct ContentMenuViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContentMenuViewBootcamp()
    }
}
