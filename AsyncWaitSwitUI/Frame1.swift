//
//  Frame.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct Frame1: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.red)
            .foregroundColor(.blue)
            .frame(width: 200, height: 200, alignment: .leading)
            .background(.yellow)
            .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .top)
            .background(.red)
            
            
    }
}

struct Frame_Previews: PreviewProvider {
    static var previews: some View {
        Frame1()
    }
}
