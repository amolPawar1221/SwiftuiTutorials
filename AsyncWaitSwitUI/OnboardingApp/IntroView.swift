//
//  IntroView.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 14/07/22.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentUserSignedIn = false
    

    var body: some View {
        ZStack {
            RadialGradient(colors: [Color.blue, Color.green], center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()

            if currentUserSignedIn {
                PofileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
