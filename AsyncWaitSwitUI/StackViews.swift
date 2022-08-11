//
//  StackViews.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct StackViews: View {
    var body: some View {
//        ZStack(alignment: .topLeading) {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 60, height: 60)
//
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 50, height: 50)
//        }

//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//
//            VStack {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100)
//
//                HStack {
//                    Rectangle()
//                        .fill(.purple)
//                        .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(.pink)
//                        .frame(width: 75, height: 75)
//
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 25, height: 25)
//                }.background(.white)
//            }.background(.black)
//
//        }

//        HStack(alignment: .center, spacing: 20) {
//
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//
//            Text("Items in your cart")
//                .font(.caption)
//                .foregroundColor(.gray)
//        }

        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)

                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }

            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }


    }
}

struct StackViews_Previews: PreviewProvider {
    static var previews: some View {
        StackViews()
    }
}
