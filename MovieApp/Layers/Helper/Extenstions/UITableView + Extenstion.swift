//
//  UITableView + Extenstion.swift
//  MovieApp
//
//  Created by Eslam on 01/04/2023.
//

import UIKit

extension UITableViewCell{
    static var identifier: String {
        return String(describing: self)
    }

    static var nib : UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
}
