//
//  ForEachLoop.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct ForEachLoop: View {

    let data = ["String", "Hello", "Hi"]
    let myString = "Hello"

    var body: some View {
//        VStack {
//            ForEach(0..<20) { index in
//                Text("Hi: \(index)")
//            }
//        }
//        VStack {
//            ForEach(0..<20) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Index is: \(index)")
//                }
//            }
//        }

        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct ForEachLoop_Previews: PreviewProvider {
    static var previews: some View {
        ForEachLoop()
    }
}
