//
//  sheetBootCamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 09/07/22.
//

import SwiftUI

struct sheetBootCamp: View {

    @State var showSheet = false

    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()

            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.title)
                    .padding(20)
                    .background(Color.white.cornerRadius(20))
            }
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }

        }
    }
}

struct SecondScreen: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()

            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct sheetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        sheetBootCamp()
    }
}
