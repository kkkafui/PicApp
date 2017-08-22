//
//  RestaurantCell.swift
//  Picapp
//
//  Created by Kafui Kumah on 7/25/17.
//  Copyright © 2017 Picapp Inc. All rights reserved.
//

import UIKit

class RestaurantCell: UITableViewCell {

    @IBOutlet weak var restaurantimage: UIImageView!
    @IBOutlet weak var restaurantname: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var restaurantinfo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
