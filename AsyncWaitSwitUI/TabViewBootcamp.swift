//
//  TabViewBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 11/07/22.
//

import SwiftUI

struct TabViewBootcamp: View {

    @State var tabSelected: Int = 1

    var body: some View {
        TabView(selection: $tabSelected) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }.tag(0)

            Text("Browse Tab")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }.tag(1)

        }
//        .tabViewStyle(.page(indexDisplayMode: .automatic))
        .accentColor(.red)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {

    var body: some View {

        ZStack {
            Color.red

            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)

                Button(action: {

                }, label: {
                    Text("Go to profile")
                })
            }

        }
    }
}
