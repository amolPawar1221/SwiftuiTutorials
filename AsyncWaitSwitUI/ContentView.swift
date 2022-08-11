//
//  ContentView.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 06/07/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var pixelService: PixelService = PixelService()

    var body: some View {
        VStack {
            Text("SwiftyPixup")
                .font(.largeTitle)
                .padding()
            Text("Loading some images inn the bacground...")
                .font(.subheadline)
            List{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))], spacing: 20) {
                    ForEach(pixelService.pictureList.list) { item in
                        Text("\(item.author)")
                        AsyncImage(url: URL(string: item.download_url)){ image in
                            image.resizable().aspectRatio(contentMode: .fill)
                        } placeholder: {
                            Color.blue
                        }.frame(width: 200, height: 200)
                            .clipped().cornerRadius(20)
                    }
                }.padding()
            }

            Button {
                Task {
                    try? await pixelService.fetchPictureList()
                }

            } label: {
                Text("Load Pictures").overlay{ if pixelService.isFetching {
                    ProgressView()
                }}
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
