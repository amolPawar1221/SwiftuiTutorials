//
//  PickerViewBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 11/07/22.
//

import SwiftUI

struct PickerViewBootcamp: View {

    @State var selction: String = ""
    var body: some View {
        VStack {
            HStack {
                Text("Age:")
                Text(selction)
            }
            Picker("Picker", selection: $selction) {
                ForEach(18..<100) { value in
                    Text("\(value)").tag("\(value)")
                        .foregroundColor(.red)
                }
            }
            .pickerStyle(.wheel)
            .padding()
        }

    }
}

struct PickerViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerViewBootcamp()
    }
}
