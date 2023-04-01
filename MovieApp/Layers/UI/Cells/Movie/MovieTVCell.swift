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
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
