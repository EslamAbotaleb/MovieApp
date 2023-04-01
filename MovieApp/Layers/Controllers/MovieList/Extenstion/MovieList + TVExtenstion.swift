//
//  MovieList + TVExtenstion.swift
//  MovieApp
//
//  Created by Eslam on 01/04/2023.
//

import UIKit
extension MovieListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movieList?.results?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = movieTV.dequeueReusableCell(withIdentifier: MovieTVCell.identifier) as? MovieTVCell  else {
            fatalError()
        }
        cell.configure(item: self.movieList?.results?[indexPath.row])
        return cell 
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.movieList?.results?[indexPath.row].originalTitle)
    }
}
