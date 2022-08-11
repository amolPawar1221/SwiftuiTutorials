//
//  SafeAreaBootCamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
//        VStack {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            Spacer()
//
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.red)
//        .ignoresSafeArea()

//        ZStack {
//            Color.yellow
//                .ignoresSafeArea()
//
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.blue)
//        }

        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                .frame(maxWidth: .infinity, maxHeight: .infinity)

                ForEach(0..<10) { _ in
                    Rectangle()
                        .fill(.green)
                        .frame(height: 200)
                        .shadow(radius: 10)
                        .padding(20)
                }

            }
        }.background(.gray)
    }
}

struct SafeAreaBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootCamp()
    }
}
