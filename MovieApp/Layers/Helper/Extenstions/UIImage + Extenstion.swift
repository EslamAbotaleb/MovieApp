//
//  UIImage + Extenstion.swift
//  MovieApp
//
//  Created by Eslam on 01/04/2023.
//

import UIKit
import Kingfisher

extension UIImageView {

    func loadImage(_ url : URL?) {
        self.kf.indicatorType = .activity
        self.kf.setImage(with: url)
    }
}
