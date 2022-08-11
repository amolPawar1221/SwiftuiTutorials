//
//  TextEditorView.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 11/07/22.
//

import SwiftUI

struct TextEditorView: View {
    @State var text: String = ""
    var body: some View {
        VStack {
            HStack {
                Text(text)
            }

            TextEditor(text: $text)
                .font(.title)
                .padding()
        }
        .background(.yellow)
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
