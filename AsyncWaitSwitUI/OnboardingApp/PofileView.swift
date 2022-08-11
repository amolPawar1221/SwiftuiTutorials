//
//  PofileView.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 15/07/22.
//

import SwiftUI

struct PofileView: View {

    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGeder: String?
    @AppStorage("signed_in") var currentUserSignedIn = false


    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0) years old!")
            Text("This gender is \(currentUserGeder ?? "unknown")")

            Text("Sign out")
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.purple)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }

        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }

    func signOut() {
        currentUserAge = nil
        currentUserName = nil
        currentUserGeder = nil
        withAnimation {
            currentUserSignedIn = false
        }
    }
}

struct PofileView_Previews: PreviewProvider {
    static var previews: some View {
        PofileView()
    }
}
