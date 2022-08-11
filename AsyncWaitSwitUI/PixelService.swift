//
//  PixelService.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 06/07/22.
//

import Foundation

//{"id":"0","author":"Alejandro Escamilla","width":5616,"height":3744,"url":"https://unsplash.com/photos/yC-Yzbqy7PY","download_url":"https://picsum.photos/id/0/5616/3744"}

enum DowloadError: Error {
    case notok
    case jsonDecoderError
}

private actor PictureServiceStore {
    private var loadedPictureList = PictureList(list: [RandomPicture(id: "0", author: "Alejandra Escamilla", download_url: "https://picsum.photos/id/0/5616/3744")])

    private var url: URL {
        component.url!
    }

    private var component: URLComponents {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "picsum.photos"
        components.path = "/v2/list"
        components.query = "limit=10"
        return components
    }

    func load() async throws -> PictureList {

        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                throw DowloadError.notok
            }
            guard let decodeedData = try? JSONDecoder().decode([RandomPicture].self, from: data) else {
                throw DowloadError.jsonDecoderError
            }
            loadedPictureList = PictureList(list: decodeedData)
            return loadedPictureList
        } catch {
            print(error.localizedDescription)
        }
        return loadedPictureList
    }

}

class PixelService: ObservableObject {
    @Published private(set) var pictureList = PictureList(list: [RandomPicture(id: "0", author: "Alejandra Escamilla", download_url: "https://picsum.photos/id/0/5616/3744")])
    @Published private(set) var isFetching = false

    private let store = PictureServiceStore()

    @MainActor func fetchPictureList() async throws {
        isFetching = true

        defer { isFetching = false }

        pictureList = try await store.load()
    }
}

struct PictureList: Codable {
    var list: [RandomPicture]
}

struct RandomPicture: Codable, Identifiable {
    let id: String
    let author: String
    let download_url: String
}
