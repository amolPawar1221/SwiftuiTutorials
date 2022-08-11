//
//  OverlysView.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct OverlysView: View {
    var body: some View {
        VStack(spacing: 50) {
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.purple, .purple.opacity(0.5)]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 100, height: 100)
                        .shadow(color: .purple, radius: 10, x: 0, y: 10)
                        .overlay(
                            Circle()
                                .fill(.blue)
                                .frame(width: 35, height: 35)
                                .overlay(Text("5").font(.headline).foregroundColor(.white))
                                .shadow(color: .purple, radius: 10, x: 0, y: 10)
                            , alignment: .bottomTrailing)
                )
                .frame(width: 100, height: 100)

            Text("Hello World!")
                .background(
                    Circle()
                        .fill(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
                        .frame(width: 100, height: 100, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(LinearGradient(colors: [.blue, .red], startPoint: .leading, endPoint: .trailing))

                        .frame(width: 120, height: 120, alignment: .center)
                )
                .frame(width: 100, height: 100)

        }

    }
}

struct OverlysView_Previews: PreviewProvider {
    static var previews: some View {
        OverlysView()
    }
}
