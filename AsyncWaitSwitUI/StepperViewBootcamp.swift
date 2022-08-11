//
//  StepperViewBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 11/07/22.
//

import SwiftUI

struct StepperViewBootcamp: View {
    @State var counter: Int = 0

    var body: some View {
        VStack {
            Stepper("Step \(counter)", value: $counter)
            Stepper("Step: \(counter)") {
                counter += 1
            } onDecrement: {
                counter -= 1
            }
        }.padding()

    }
}

struct StepperViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperViewBootcamp()
    }
}
