//
//  ActionsheetviewBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 10/07/22.
//

import SwiftUI

struct ActionsheetviewBootcamp: View {

    @State var showSheet = false

    var body: some View {
        Button("Click here") {
            showSheet.toggle()
        }
        .font(.headline)
        .foregroundColor(.yellow)

        .actionSheet(isPresented: $showSheet) {
            ActionSheet(title: Text("Title"), message: Text("actio alert"), buttons: [.cancel(), .destructive(Text("ok my button"), action: {
                
            })])
        }
    }
}

struct ActionsheetviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionsheetviewBootcamp()
    }
}
