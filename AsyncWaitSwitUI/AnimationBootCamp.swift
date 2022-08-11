//
//  AnimationBootCamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 08/07/22.
//

import SwiftUI

struct AnimationBootCamp: View {

    @State var isAnimated: Bool = false

    var body: some View {
        VStack {
            Button("Butto") {
//                withAnimation(Animation.default.repeatCount(5, autoreverses: true)) {
//                    isAnimated.toggle()
//                }
                isAnimated.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 300 : 0))
                .offset(y: isAnimated ? 200 : 0)
                .animation(Animation.default.repeatCount(5, autoreverses: true))
            Spacer()
        }
    }
}

struct AnimationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootCamp()
    }
}
