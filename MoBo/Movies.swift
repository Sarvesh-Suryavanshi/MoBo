//
//  Movies.swift
//  MoBo
//
//  Created by Sarvesh Suryavanshi on 05/11/22.
//

// MARK: - Movie
struct Movie: Codable {
    let rating: Double
    let id: Int
    let revenue: Int?
    let releaseDate: String
    let director: Director
    let posterURL: String
    let cast: [Cast]
    let runtime: Int
    let title, overview: String
    let reviews, budget: Int
    let language: Language
    let genres: [String]

    enum CodingKeys: String, CodingKey {
        case rating, id, revenue, releaseDate, director
        case posterURL = "posterUrl"
        case cast, runtime, title, overview, reviews, budget, language, genres
    }
}

// MARK: - Cast
struct Cast: Codable {
    let name: String
    let pictureURL: String
    let character: String

    enum CodingKeys: String, CodingKey {
        case name
        case pictureURL = "pictureUrl"
        case character
    }
}

// MARK: - Director
struct Director: Codable {
    let name: String
    let pictureURL: String

    enum CodingKeys: String, CodingKey {
        case name
        case pictureURL = "pictureUrl"
    }
}

enum Language: String, Codable {
    case en = "en"
    case fr = "fr"
    case ja = "ja"
    case ko = "ko"
}

typealias MovieList = [Movie]
