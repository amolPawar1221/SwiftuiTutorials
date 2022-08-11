//
//  StateBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct StateBootcamp: View {

    @State var backgroundColor: Color = .red
    @State var myTitle = "My title"
    @State var count = 0

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()

            VStack(spacing: 20) {
                Text(myTitle)
                    .foregroundColor(.white)
                Text("Count: \(count)")
                    .foregroundColor(.white)

                HStack(spacing: 20) {
                    Button {
                        self.count += 1
                        self.myTitle = "Button 1"
                        self.backgroundColor = .purple
                    } label: {
                        Text("Button 1")
                            .foregroundColor(.white)
                    }

                    Button {
                        self.count -= 1
                        self.myTitle = "Button 2"
                        self.backgroundColor = .pink
                    } label: {
                        Text("Button 2")
                            .foregroundColor(.white)
                    }

                }

            }
        }
         //
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
