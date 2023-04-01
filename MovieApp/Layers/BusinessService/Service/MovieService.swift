//
//  MovieService.swift
//  MovieApp
//
//  Created by Eslam on 01/04/2023.
//

import Foundation
import Moya

enum ApiService {

    case listMovies
}

extension ApiService: TargetType {
    var baseURL: URL {
        guard let url = URL(string: Urls.base_url.rawValue) else { fatalError() }
        return url
    }

    var path: String {
        switch self {
        case .listMovies:
            return "discover/movie?api_key=\(APIKey.api_key.rawValue)"
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
            return .requestPlain
        }
    }

    var headers: [String : String]? {
        return  ["Content-Type": "application/json"]
    }

    public var validationType: ValidationType {
      return .successCodes
    }
}
