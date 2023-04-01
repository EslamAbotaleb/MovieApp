//
//  DetailMovieVM.swift
//  MovieApp
//
//  Created by Eslam on 01/04/2023.
//

import Foundation
import Moya

final class MovieDetailsVM {
    let movieService = MoyaProvider<ApiMovieService>()

    func fetchMovieById(completionHanlder: @escaping (DetailMovie?) -> (), movieId: Int) {
        movieService.request(.detailMovie(movieId: movieId)) { response in
            switch (response) {
            case .success(let response):
                DispatchQueue.main.async {
                    do {
                        let movieDetails = try  JSONDecoder().decode(DetailMovie.self, from: response.data)
                        completionHanlder(movieDetails)
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
