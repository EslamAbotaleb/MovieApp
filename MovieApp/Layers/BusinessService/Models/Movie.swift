//
//  Movie.swift
//  MovieApp
//
//  Created by Eslam on 01/04/2023.
//

import Foundation
// MARK: - Movie
struct Movie: BaseModel {
    let page: Int?
    let results: [MovieResult]?
    let totalPages, totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
