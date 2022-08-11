//
//  FocusStateBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 15/07/22.
//

import SwiftUI

struct FocusStateBootcamp: View {

    enum OnBoardigField: Hashable {
        case username
        case password
    }

    @FocusState var fieldFocus: OnBoardigField?

    @State var username: String = ""
    @State var password: String = ""
//    @FocusState var usernameFocus: Bool
//    @FocusState var passwordFocus: Bool

    var body: some View {
        VStack(spacing: 20) {
            TextField("Add your name", text: $username)
                .focused($fieldFocus, equals: OnBoardigField.username)
//                .focused($usernameFocus)
                .padding()
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)

            TextField("password", text: $password)
                .focused($fieldFocus, equals: OnBoardigField.password)
//                .focused($passwordFocus)
                .padding()
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)

            Button("Sign up") {
                let userNameValid = !username.isEmpty
                let passwordValid = !password.isEmpty
                if userNameValid && passwordValid {

                } else if userNameValid {
                    fieldFocus = .password
//                    usernameFocus = false
//                    passwordFocus = true
                } else {
                    fieldFocus = .username
//                    passwordFocus = false
//                    usernameFocus = true

                }

            }

            Button("Toggle foucus state") {
                fieldFocus = .username
            }
        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
