//
//  MovieTVCell.swift
//  MovieApp
//
//  Created by Eslam on 01/04/2023.
//

import UIKit

class MovieTVCell: UITableViewCell {

    @IBOutlet weak var movieNameLbl: UILabel!
    @IBOutlet weak var movieDateLbl: UILabel!
    @IBOutlet weak var movieImg: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        movieNameLbl.sizeToFit()
        movieNameLbl.adjustsFontSizeToFitWidth = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func configure(item: MovieResult?) {
        let backdropPath: String? = item?.backdropPath
        if let backdropPath {
            movieImg.loadImage(URL(string: Urls.image_url.rawValue + backdropPath)!)
        }
        self.movieNameLbl.text = item?.originalTitle
        self.movieDateLbl.text = item?.releaseDate
    }
}
