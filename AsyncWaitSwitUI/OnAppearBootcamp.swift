//
//  OnAppearBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 12/07/22.
//

import SwiftUI

struct OnAppearBootcamp: View {

    @State var myText = "my new text"
    @State var count = 0
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hello, World! \(myText)")

                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }

                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "here is on appear"
                }
            })
            .onDisappear {
                myText = "end appear"
            }

            .navigationTitle("amol pawar \(count)")
        }

    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
