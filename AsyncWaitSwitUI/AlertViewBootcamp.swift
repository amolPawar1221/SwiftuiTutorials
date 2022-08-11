//
//  AlertViewBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 10/07/22.
//

import SwiftUI

struct AlertViewBootcamp: View {

    @State var showAlert = false
    @State var backgroundColor = Color.yellow

    var body: some View {
        ZStack {

            backgroundColor.ignoresSafeArea()

            Button("Click me") {
                showAlert.toggle()
            }
            .font(.largeTitle)
            .foregroundColor(.orange)

            .alert(isPresented: $showAlert) {
               // Alert(title: Text("Ammol"), message: Text("Pawar"), dismissButton: .cancel())
    //            Alert(title: Text("This title"), message: Text("here is the alert"), primaryButton: .default(Text("ok")), secondaryButton: .cancel())

                Alert(title: Text("This title"), message: Text("here is the alert"), primaryButton: .destructive(Text("change color"), action: {
                    backgroundColor = .blue
                }), secondaryButton: .cancel())
        }
        }

    }
}

struct AlertViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertViewBootcamp()
    }
}
