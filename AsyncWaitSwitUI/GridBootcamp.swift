//
//  GridBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 07/07/22.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
//        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.fixed(60), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(60), spacing: nil, alignment: nil),
//        GridItem(.fixed(60), spacing: nil, alignment: nil)

        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]

    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.white)
                .frame(height: 400)

            LazyVGrid(columns: columns, alignment: .center, spacing: 2, pinnedViews: [.sectionHeaders]) {
                Section(header:
                            Text("Section 1")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(.red)
                ) {
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(.orange)
                            .frame(height: 160)
                    }
                }

                Section(header:
                            Text("Section 2")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(.blue)
                ) {
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(.red)
                            .frame(height: 160)
                    }
                }

            }

            LazyVGrid(columns: columns) {
                ForEach(0..<50) { _ in
                    Rectangle()
                        .frame(height: 160)
                }
            }
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
