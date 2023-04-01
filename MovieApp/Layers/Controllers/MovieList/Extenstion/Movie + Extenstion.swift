//
//  Movie + Extenstion.swift
//  MovieApp
//
//  Created by Eslam on 01/04/2023.
//

import UIKit

extension MovieListVC {

    func initTableView() {
        self.movieTV.delegate = self
        self.movieTV.dataSource = self
    }

    func registerCell() {
        self.movieTV.register(MovieTVCell.nib, forCellReuseIdentifier: MovieTVCell.identifier)
    }

    func getAllMovies() {
        movies?.getAllMovies(completionHanlder: { [weak self] allMovie in
            self?.movieList = allMovie
            DispatchQueue.main.async {
                self?.movieTV.reloadData()
            }
        })
    }
}
