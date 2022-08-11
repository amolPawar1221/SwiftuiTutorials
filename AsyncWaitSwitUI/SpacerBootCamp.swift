//
//  SpacerBootCamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct SpacerBootCamp: View {
    var body: some View {
//        HStack(spacing: nil) {
//
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//
//            Rectangle()
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50, height: 50)
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//        }
//        .background(.yellow)
//        .padding(.horizontal, 200)
//        .background(.blue)

        VStack {
            HStack() {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }.font(.title)
                .padding(.horizontal)

            Spacer()
            Rectangle()
                .frame(height: 50)
        }
    }
}

struct SpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootCamp()
    }
}
