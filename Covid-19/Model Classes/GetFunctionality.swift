//
//  GetFunctionality.swift
//  Covid-19
//
//  Created by monica s b on 27/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import Foundation


struct GetFunctionality  {
    
    var page : Int?
    var results : [Result] = []
    var totalPages : Int?
    var totalResults : Int?
    
    enum CodingKeys: String, CodingKey {
        case page = "page"
        case results = "results"
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
    init(dict : [String:Any]) {
        page = dict["page"] as? Int
        if let resultsData = dict["results"] as? [[String:Any]] {
            print("@@@@@@@@@@@@@", resultsData)
            for i in resultsData {
                let resultz = Result(dictionaries: i)
                results.append(resultz)
            }
        }
        totalPages = dict["total_pages"] as? Int
        totalResults = dict["total_results"] as? Int
    }

}
struct Result {
    
    var adult : Bool?
    var backdropPath : String?
    var genreIds : [Int]?
    var id : Int?
    var originalLanguage : String?
    var originalTitle : String?
    var overview : String?
    var popularity : Float?
    var posterPath : String?
    var releaseDate : String?
    var title : String?
    var video : Bool?
    var voteAverage : Float?
    var voteCount : Int?
    
    enum CodingKeys: String, CodingKey {
        case adult = "adult"
        case backdropPath = "backdrop_path"
        case genreIds = "genre_ids"
        case id = "id"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview = "overview"
        case popularity = "popularity"
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title = "title"
        case video = "video"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
    init(dictionaries: [String:Any]) {
        adult = dictionaries["adult"] as? Bool
        backdropPath  = dictionaries["backdrop_path"] as? String
        genreIds = dictionaries["genre_ids"] as? [Int]
        id = dictionaries["id"] as? Int
        originalTitle  = dictionaries["backdrop_path"] as? String
        originalLanguage = dictionaries["backdrop_path"] as? String
        overview = dictionaries["overview"] as? String
        popularity = dictionaries["popularity"] as? Float
        posterPath = dictionaries["poster_path"] as? String
        releaseDate = dictionaries["release_date"] as? String
        title = dictionaries["title"] as? String
        video = dictionaries["video"] as? Bool
        voteAverage = dictionaries["vote_average"] as? Float
        voteCount = dictionaries["vote_count"] as? Int

    }
    
}
