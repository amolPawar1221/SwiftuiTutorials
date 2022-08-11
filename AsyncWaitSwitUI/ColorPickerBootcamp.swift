//
//  ColorPickerBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 11/07/22.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var color: Color = .red
    var body: some View {
        ZStack {
            color.ignoresSafeArea()
            ColorPicker("Select Color", selection: $color, supportsOpacity: true)
                .padding()
                .background(.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(50)
                .font(.headline)
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
