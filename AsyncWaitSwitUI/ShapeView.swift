//
//  ShapeView.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)

//            .stroke(.red)
//            .stroke(.red, lineWidth: 20)
        //.fill(.red)
//            .trim(from: 0, to: 0.9)
//            .foregroundColor(.red)
            .stroke(.red, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
            .frame(width: 300, height: 100)



    }
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
