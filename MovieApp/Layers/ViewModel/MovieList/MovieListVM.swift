//
//  MovieListVM.swift
//  MovieApp
//
//  Created by Eslam on 01/04/2023.
//

import Foundation
import Moya

final class MovieListVM {
    let movieService = MoyaProvider<ApiMovieService>()

    func getAllMovies(completionHanlder: @escaping (Movie?) -> ()) {
       movieService.request(.listMovies) { response in
            switch (response) {
            case .success(let response):
                DispatchQueue.main.async {
                    do {
                        let allMovies = try  JSONDecoder().decode(Movie.self, from: response.data)
                        completionHanlder(allMovies)
                    } catch(let error) {
                        print(error)
                        completionHanlder(nil)
                    }
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
