//
//  GraidentView.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct GraidentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .fill(
        LinearGradient(colors: [.red, .blue], startPoint: UnitPoint.bottomLeading, endPoint: .bottom)
//        RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .bottomTrailing, startRadius: 100, endRadius: 200)
//        AngularGradient(colors: [.red, .blue], center: .center, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 360))
            )
            .frame(width: 300, height: 200)
    }
}

struct GraidentView_Previews: PreviewProvider {
    static var previews: some View {
        GraidentView()
    }
}
