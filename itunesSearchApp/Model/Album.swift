//
//  Album.swift
//  itunesSearchApp
//
//  Created by Alexander Zarutskiy on 06.09.2023.
//

import Foundation


//   let albumResult = try? JSONDecoder().decode(AlbumResult.self, from: jsonData)



// MARK: - AlbumResult
struct AlbumResult: Codable {
    let resultCount: Int
    let albums: [Album]
    enum CodingKeys: String, CodingKey {
        case resultCount
        case albums = "results"
    }
}

// MARK: - Album
struct Album: Codable, Identifiable {
    let id: Int
    let wrapperType, collectionType: String
    let artistID: Int
    let amgArtistID: Int?
    let artistName, collectionName, collectionCensoredName: String
    let artistViewURL: String?
    let collectionViewURL: String
    let artworkUrl60, artworkUrl100: String
    let collectionPrice: Double
    let collectionExplicitness: String
    let trackCount: Int
    let copyright, country, currency: String
    let releaseDate: String
    let primaryGenreName: String

    enum CodingKeys: String, CodingKey {
        case wrapperType, collectionType
        case artistID = "artistId"
        case id = "collectionId"
        case amgArtistID = "amgArtistId"
        case artistName, collectionName, collectionCensoredName
        case artistViewURL = "artistViewUrl"
        case collectionViewURL = "collectionViewUrl"
        case artworkUrl60, artworkUrl100, collectionPrice, collectionExplicitness, trackCount, copyright, country, currency, releaseDate, primaryGenreName
    }
}
