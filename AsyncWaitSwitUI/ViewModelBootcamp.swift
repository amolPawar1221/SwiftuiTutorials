//
//  ViewModelBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 12/07/22.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id = UUID()
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruits: [FruitModel] = []
    @Published var isLoading = false

    init() {
        getFruits()
    }

    func getFruits() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
            let f1 = FruitModel(name: "orange", count: 2)
            let f2 = FruitModel(name: "Banana", count: 56)
            let f3 = FruitModel(name: "Watermelon", count: 45)
            let f4 = FruitModel(name: "Apple", count: 2)
            self.fruits.append(contentsOf: [f1, f2, f3, f4])
            self.isLoading = false
        }

    }

    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}


struct ViewModelBootcamp: View {

    @StateObject var fruitVM = FruitViewModel()

    var body: some View {
        NavigationView {
            List {

                if fruitVM.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitVM.fruits) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)

                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete {
                        fruitVM.deleteFruit(index: $0)
                    }
                }
            }
            .listStyle(.grouped)
            .navigationBarTitle("Fruit List")
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    NavigationLink {
                        RandomScreen(fruitViewModel: fruitVM)
                    } label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    }
                }
            }
//            .onAppear {
//                fruitVM.getFruits()
//            }
        }
    }
}

struct RandomScreen: View {

    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()

//            Button {
//                presentationMode.wrappedValue.dismiss()
//            } label: {
//                Text("Go Back")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            }

            VStack {
                ForEach(fruitViewModel.fruits) { fruit in
                    Text("\(fruit.name)")
                        .font(.largeTitle)

                }
            }

        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
