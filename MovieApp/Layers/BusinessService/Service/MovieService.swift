//
//  MovieService.swift
//  MovieApp
//
//  Created by Eslam on 01/04/2023.
//

import Foundation
import Moya

enum ApiMovieService {
    case listMovies
}

extension ApiMovieService: TargetType {
    var baseURL: URL {
        guard let url = URL(string: Urls.base_url.rawValue) else { fatalError() }
        return url
    }

    var path: String {
        switch self {
        case .listMovies:
            return "discover/movie"
        }
    }

    var method: Moya.Method {
        switch self {
        case .listMovies:
            return .get
        }
    }

    var sampleData: Data {
        switch self {
        case .listMovies:
            return Data()
        }
    }
    var task: Task {
        switch self {
        case .listMovies:
            return .requestParameters(parameters: ["api_key": APIKey.api_key.rawValue], encoding: URLEncoding.queryString)
        }
    }

    var headers: [String : String]? {
        return  ["Content-Type": "application/json"]
    }

    public var validationType: ValidationType {
      return .successCodes
    }
}
