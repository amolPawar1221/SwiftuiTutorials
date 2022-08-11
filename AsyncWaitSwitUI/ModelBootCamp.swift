//
//  ModelBootCamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 12/07/22.
//

import SwiftUI

struct UserModel: Identifiable {
    let displayName: String
    let userName: String
    let followerCout: Int
    let id = UUID()
    let isVarified: Bool
}

struct ModelBootCamp: View {

    @State var users: [UserModel] = [
        UserModel(displayName: "NNick", userName: "Nick nnme", followerCout: 234, isVarified: true),
        UserModel(displayName: "Emily", userName: "emily99348", followerCout: 345, isVarified: true),
        UserModel(displayName: "samantha", userName: "samantha334", followerCout: 1000, isVarified: false),
        UserModel(displayName: "chris", userName: "charis2344", followerCout: 34, isVarified: false)
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.id) { user in
                    HStack {

                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text(user.userName)
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVarified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack {
                            Text("\(user.followerCout)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }

                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Users")
        }
    }
}

struct ModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootCamp()
    }
}
