//
//  SliderBootCamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 11/07/22.
//

import SwiftUI

struct SliderBootCamp: View {

    @State var sliderValue: Double = 3
    var body: some View {
        VStack {
            Text("Rating:")
            Text("\(sliderValue)")
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
//            Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(value: $sliderValue, in: 1...5, label: {
                Text("dfnkfekjefjk")
            }, minimumValueLabel: {
                Text("5")
            }, maximumValueLabel: {
                Text("4")
            }, onEditingChanged: { value in

            })
                .accentColor(.red)
                .padding()
        }
    }
}

struct SliderBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootCamp()
    }
}
