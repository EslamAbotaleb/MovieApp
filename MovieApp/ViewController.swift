//
//  ViewController.swift
//  MovieApp
//
//  Created by Eslam Abotaleb on 01/04/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let movieVC = MovieListVC(nibName: "MovieListVC", bundle: nil)
            movieVC.modalPresentationStyle = .fullScreen
            self.present(movieVC, animated: true, completion: nil)
        }
    }


}

