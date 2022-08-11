//
//  ProfileView.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 10/07/22.
//

import SwiftUI

struct MainProfileView: View {

    var body: some View {
        ScrollView(.horizontal) {
            HStack() {
                ProfileView()
                ProfileView()
                ProfileView()
                ProfileView()
                ProfileView()
            }
        }.frame(maxHeight: 600)

    }
}

struct ProfileView: View {

    var body: some View {
        VStack {
            //using overly
            Image("image")
                .resizable()
                .aspectRatio(contentMode: .fit)

                .overlay(
                    ProfileDetails(),
                    alignment: .bottom
                )

            //using Zstack
            ZStack(alignment: .bottom) {
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                ProfileDetails()
            }
        }
    }
}

struct ProfileDetails: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Ammol")
                    .font(.headline)
                Text("pawar")
                    .font(.subheadline)
            }
             Spacer()
        }
        .padding()
        .foregroundColor(.primary)
        .background(Color.primary.colorInvert().opacity(0.73))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Crosshairs()
    }
}

struct Crosshairs: View {

    var body: some View {
        ZStack {
            Rectangle()


        }
    }

}
