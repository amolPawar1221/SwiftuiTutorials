//
//  OnboardingView.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 14/07/22.
//

import SwiftUI

struct OnboardingView: View {

    @State var onboardingState: Int = 0
    @State var name: String = ""
    @State var age: Double = 18
    @State var gender: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false

    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGeder: String?
    @AppStorage("signed_in") var currentUserSignedIn = false

    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))

    var body: some View {
        ZStack {
            ZStack {
                switch onboardingState {
                case 0:
                   welcomeSection
                        .transition(transition)
                case 1:
                   addNameSection
                        .transition(transition)
                case 2:
                   addAgeSection
                        .transition(transition)
                case 3:
                   addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.purple)
                }
            }


            VStack {
                Spacer()
                bottomButton
            }.padding(20)
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }

    var bottomButton: some View {
        Text(onboardingState == 0 ? "Sign UP" :
                onboardingState == 3 ? "Finish" : "Next")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .onTapGesture {
                handleNextuttonPressed()
            }
    }

    func handleNextuttonPressed() {

        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters long")
                return
            }
        case 3:
            guard !gender.isEmpty else {
                showAlert(title: "Please select gender befor moving forward")
                return
            }
        default:
            break
        }

        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }

    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }

    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGeder = gender

        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }

    var welcomeSection: some View {
        VStack(spacing: 40) {
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)

            Text("Fid your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(Capsule(style: .continuous)
                            .frame(height: 3)
                            .offset(y: 5)
                            .foregroundColor(.white), alignment: .bottom)
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using appStorage and othe SwiftUI techniques")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding()
    }



    var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding()
    }

    var addAgeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your Age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text(String(format: "%..0f", age))
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding()
    }

    var addGenderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your Gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Menu {
                ForEach(["Male", "Female", "Non-Binary"], id: \.self) { item in
                    Button {
                        gender = item
                    } label: {
                        Text(item)
                    }
                }.menuStyle(.automatic)
//                Picker(selection: $gender) {
//                    Text("Male").tag("Male")
//                    Text("Female").tag("Famale")
//                    Text("Non-Binary").tag("Non-Binary")
//                } label: { }
//                .pickerStyle(.menu)

                } label: {
                    Text(gender.count > 1 ? gender : "Select a gender")
                        .font(.headline)
                        .foregroundColor(.purple)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(.white)
                        .cornerRadius(10)
                }
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding()
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(.purple)
    }
}
