//
//  ContextMenuBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 11/07/22.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.largeTitle)
            Text("Swiftful thinking")
                .font(.title)
            Text("How to use contexxt menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(Color.cyan)
        .contextMenu {
            Button {

            } label: {
                Label("Button 1", systemImage: "flame.fill")
            }

            Button {

            } label: {
                Text("Button")
            }

            Button {

            } label: {
                HStack {
                    Text("Button 3")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
