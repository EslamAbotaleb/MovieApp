//
//  MovieDetailsVC.swift
//  MovieApp
//
//  Created by Eslam on 01/04/2023.
//

import UIKit

class MovieDetailsVC: UIViewController {

    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieNameLbl: UILabel!
    @IBOutlet weak var moviedDateLbl: UILabel!
    @IBOutlet weak var movieOverviewLbl: UITextView!

    var movieDetails: MovieDetailsVM?
    var movieId: Int?
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getMovieDetailsById(movieId!)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        movieDetails = MovieDetailsVM()
        getMovieDetailsById(movieId!)
    }

    func getMovieDetailsById(_ id: Int) {
        movieDetails?.fetchMovieById(completionHanlder: { [weak self] detailMovie in
            let backdropPath: String? = detailMovie?.backdropPath
            if let backdropPath {
                self?.movieImg.loadImage(URL(string: Urls.image_url.rawValue + backdropPath)!)
            }
            self?.movieNameLbl.text = detailMovie?.originalTitle
            self?.moviedDateLbl.text = detailMovie?.releaseDate
            self?.movieOverviewLbl.text = detailMovie?.overview ?? ""
        }, movieId: id)
    }

    @IBAction func dismissPage(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
