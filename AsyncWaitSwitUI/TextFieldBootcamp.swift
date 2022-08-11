//
//  TextFieldBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 11/07/22.
//

import SwiftUI

struct TextFieldBootcamp: View {

    @State var someText: String = ""
    @State var dataArray: [String] = []

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
            TextField("Type something here...", text: $someText)
                .foregroundColor(.blue)
                .padding()
                .background(.yellow)
                .cornerRadius(20)

            Button {
                dataArray.append(someText)
            } label: {
                Text("Save".capitalized)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)

            }
            .disabled(false)
            .background(.yellow)
            .cornerRadius(20)

            ForEach(dataArray, id: \.self) { data in
                Text(data)
            }
        }
        .padding()
        .background(.green)
        
        }
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
