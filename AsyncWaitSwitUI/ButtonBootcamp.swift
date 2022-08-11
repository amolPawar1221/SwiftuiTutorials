//
//  Buttonootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct ButtonBootcamp: View {

    @State var title = "This is my title"
    var body: some View {
        VStack(spacing: 20) {
            Text(title)

            Button("Press Me") {
                self.title = "Button pressed"
            }
            .accentColor(.red)

            Button {
                self.title = "Button 2 preesed"
            } label: {
                Text("Save".uppercased())
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }

            Button {
                self.title = "Title 3"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }

            Button {
                self.title = "Title 4"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 3)

                    )
            }
        }
    }
}

struct Buttonootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
