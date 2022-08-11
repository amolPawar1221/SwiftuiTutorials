//
//  TextView.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 06/07/22.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            //.font(.body)
            //.fontWeight(.semibold)
            //.bold()
//            .underline()
            //.underline(true, color: .red)
            //.italic()
            //.strikethrough(true, color: .yellow)
            .font(.system(size: 23, weight: .semibold, design: .rounded))
            .baselineOffset(40)
            .kerning(23)
            .multilineTextAlignment(.trailing)
            .foregroundColor(.red)
            .frame(width: 300, height: 300, alignment: .center)
            .minimumScaleFactor(0.3)

    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
