//
//  TrannsitionsBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 09/07/22.
//

import SwiftUI

struct TrannsitionsBootcamp: View {

    @State var showView: Bool = false

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.opacity.animation(.easeInOut))
//                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)))
                    .animation(.easeInOut)
            }

        }
    }
}

struct TrannsitionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TrannsitionsBootcamp()
    }
}
