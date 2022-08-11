//
//  AnimationTimmingBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 08/07/22.
//

import SwiftUI

struct AnimationTimmingBootcamp: View {

    @State var isAnimating = false
    let timing = 10.0
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }

            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.linear(duration: timing), value: UUID())
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeIn(duration: timing), value: UUID())
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeInOut(duration: timing), value: UUID())
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeOut(duration: timing), value: UUID())
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.spring(response: 1, dampingFraction: 0.2, blendDuration: 1.0), value: UUID())
        }
    }
}

struct AnimationTimmingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimmingBootcamp()
    }
}
