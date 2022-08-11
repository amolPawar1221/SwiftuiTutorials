//
//  BadgesBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 15/07/22.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {

        List {
            Text("Heloo")
                .badge(3)
            Text("Hey")
                .badge(Text("Amol"))
            Text("Hiiii")
            Text("okeyees")
        }
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(2)
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("hey")
//                }
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hi")
//                }
//
//        }

    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
