//
//  ListSwipeActionBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 15/07/22.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {

    @State var fruits = ["Apple", "Mango", "Bananan"]

    var body: some View {
        List {
            ForEach(fruits, id: \.self) { item in
                Text(item.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button("Archive") {

                        }
                        .tint(.green)

                        Button("save") {

                        }
                        .tint(.blue)

                        Button("delete") {

                        }
                        .tint(.red)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("junk") {

                        }
                        .tint(.yellow)
                    }

            }
        }
    }
}

struct ListSwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootcamp()
    }
}
