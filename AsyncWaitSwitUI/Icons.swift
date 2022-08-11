//
//  Icons.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .renderingMode(.original)
//            .scaledToFit()
            .scaledToFill()
//            .aspectRatio(contentMode: .fit)
//            .font(.caption)
//            .font(.system(size: 200))
//            .foregroundColor(.red)
            .frame(width: 300, height: 300)
//            .clipped()
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
