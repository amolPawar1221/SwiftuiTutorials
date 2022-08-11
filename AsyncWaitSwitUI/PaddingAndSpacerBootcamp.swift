//
//  PaddingAndSpacerBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(.yellow)
//            //.padding()
//            .padding(.all, 10)
//            .padding(.leading, 20)
//            .background(.blue)

//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(.red)

        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)

            Text("This is the desciption of what we will do on this screen. It is multiple lines and we will alig the text to the leading egde")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 10)
        ).padding(.horizontal, 15)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
