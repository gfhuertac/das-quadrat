//
//  VenueCell.swift
//  Demo-iOS
//
//  Created by Constantine Fry on 29/11/14.
//  Copyright (c) 2014 Constantine Fry. All rights reserved.
//

import Foundation
import UIKit


/** A cell to display venue name, rating and user tip. */
class VenueTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userPhotoImageView: UIImageView!
    
    @IBOutlet weak var venueNameLabel: UILabel!
    @IBOutlet weak var venueRatingLabel: UILabel!
    @IBOutlet weak var venueCommentLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        userPhotoImageView.layer.cornerRadius = 4
        userPhotoImageView.layer.shouldRasterize = true
        userPhotoImageView.layer.rasterizationScale = UIScreen.mainScreen().scale
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.userPhotoImageView.image = nil
    }
}

/** A cell to display user. */
class FriendTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        photoImageView.layer.cornerRadius = 4
        photoImageView.layer.shouldRasterize = true
        photoImageView.layer.rasterizationScale = UIScreen.mainScreen().scale
    }
}

