//
//  ColorView.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .fill(
                .red
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color.red.opacity(0.2), radius: 10, x: 20, y: -20)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
