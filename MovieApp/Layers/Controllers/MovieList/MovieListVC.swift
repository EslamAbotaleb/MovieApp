//
//  MovieListVC.swift
//  MovieApp
//
//  Created by Eslam on 01/04/2023.
//

import UIKit

class MovieListVC: UIViewController {

    @IBOutlet weak var movieTV: UITableView!

    var movies: MovieListVM?
    var movieList: Movie?

    override func viewDidLoad() {
        super.viewDidLoad()
        initTableView()
        registerCell()
        movies = MovieListVM()
        getAllMovies()
    }
}
