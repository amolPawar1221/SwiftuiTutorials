//
//  AsynchImageView.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 15/07/22.
//

import SwiftUI

struct AsynchImageView: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
//        AsyncImage(url: url) { image in
//            image
//                .resizable()
//                .scaledToFit()
//                .frame(width: 400, height: 400)
//                .cornerRadius(20)
//        } placeholder: {
//            ProgressView()
//        }

        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questiomark")
            default:
                Image(systemName: "questiomark")
            }
        }
    }
}

struct AsynchImageView_Previews: PreviewProvider {
    static var previews: some View {
        AsynchImageView()
    }
}
