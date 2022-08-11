//
//  ScrollViewBootCamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: true) {
//            HStack() {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(.orange)
//                        .frame(width: 300, height: 300)
//                }
//            }
//             Spacer()
//        }

        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }

                }
            }
        }
    }
}

struct ScrollViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootCamp()
    }
}
