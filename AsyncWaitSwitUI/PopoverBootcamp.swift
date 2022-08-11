//
//  PopoverBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 09/07/22.
//

import SwiftUI

struct PopoverBootcamp: View {

    @State var showScreenn = false
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()

            VStack {
                Button("Button") {
                    showScreenn.toggle()
                }.font(.largeTitle)
                Spacer()
            }
//            .sheet(isPresented: $showScreenn) {
//                NewSreen()
//            }
//            ZStack {
//                if showScreenn {
//                    NewSreen(showNewScreen: $showScreenn)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)

            NewSreen(showNewScreen: $showScreenn)
                .padding(.top, 100)
                .offset(y: showScreenn ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())

        }
    }
}

struct NewSreen: View {

    @Environment(\.presentationMode) var presentationMode

    @Binding var showNewScreen: Bool

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()

            Button {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(10)
            }
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
    }
}
