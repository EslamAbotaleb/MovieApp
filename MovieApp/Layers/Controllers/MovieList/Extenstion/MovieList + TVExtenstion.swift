//
//  MovieList + TVExtenstion.swift
//  MovieApp
//
//  Created by Eslam on 01/04/2023.
//

import UIKit
extension MovieListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        return UITableViewCell()
    }


}
