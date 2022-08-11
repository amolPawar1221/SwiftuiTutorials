//
//  EnvironmentObjectBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 12/07/22.
//

import SwiftUI

class EnviromentViewModel: ObservableObject {
    @Published var  dataArray: [String] = []

    init() {
        getData()
    }

    func getData() {

        dataArray.append(contentsOf: ["iphone", "ipad", "imac", "Apple"])

    }
}

struct EnvironmentObjectBootcamp: View {

    @StateObject var viewModel = EnviromentViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailsView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("ios devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailsView: View {

    var selectedItem: String

    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()

            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView: View {

    @EnvironmentObject var vm: EnviromentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.blue.opacity(0.7), Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            ScrollView {
                ForEach(vm.dataArray, id: \.self) { data in
                    Text(data)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}
