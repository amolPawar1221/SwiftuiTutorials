//
//  NavigatioViewBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 09/07/22.
//

import SwiftUI

struct NavigatioViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hell Woeld") {
                    NewScreen()
                }
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }

            .navigationTitle("title navigation")
            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
//            .navigationBarItems(leading: Text("sss"), trailing: Text("aaaa"))
            .blueNavigation
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                    Text("sss")
                }
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    Text("sss")
                }
                ToolbarItem(placement: ToolbarItemPlacement.status) {
                    Text("sss222eeeeeeeee")
                }

            }
        }
    }
}

struct NewScreen: View {

    var body: some View {
        ZStack(alignment: .top) {
            Color.green
                .ignoresSafeArea()

            VStack {
                Button("Title button") {

                }
                Button("Back scrren Title button") {

                }
            }
            .navigationTitle("New screen")
        }
    }
}
struct NavigatioViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigatioViewBootcamp()
    }
}


struct NavigationBarModifier: ViewModifier {
  var backgroundColor: UIColor
  var textColor: UIColor

  init(backgroundColor: UIColor, textColor: UIColor) {
    self.backgroundColor = backgroundColor
    self.textColor = textColor
    let coloredAppearance = UINavigationBarAppearance()
    coloredAppearance.configureWithTransparentBackground()
    coloredAppearance.backgroundColor = .clear
    coloredAppearance.titleTextAttributes = [.foregroundColor: textColor]
    coloredAppearance.largeTitleTextAttributes = [.foregroundColor: textColor]

    UINavigationBar.appearance().standardAppearance = coloredAppearance
    UINavigationBar.appearance().compactAppearance = coloredAppearance
    UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    UINavigationBar.appearance().tintColor = textColor
  }

  func body(content: Content) -> some View {
    ZStack{
       content
        VStack {
          GeometryReader { geometry in
             Color(self.backgroundColor)
                .frame(height: geometry.safeAreaInsets.top)
                .edgesIgnoringSafeArea(.top)
              Spacer()
          }
        }
     }
  }
}

extension View {
  func navigationBarColor(_ backgroundColor: UIColor, textColor: UIColor) -> some View {
    self.modifier(NavigationBarModifier(backgroundColor: backgroundColor, textColor: textColor))
  }
}

extension View {
  var blueNavigation: some View {
    self.navigationBarColor(UIColor.blue, textColor: UIColor.white)
  }
}
