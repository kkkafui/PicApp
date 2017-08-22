//
//  ActivityCell.swift
//  Picapp
//
//  Created by Kafui Kumah on 7/25/17.
//  Copyright © 2017 Picapp Inc. All rights reserved.
//

import UIKit

class ActivityCell: UITableViewCell {
    
    @IBOutlet weak var foodimg: UIImageView!
    @IBOutlet weak var foodname: UILabel!
    @IBOutlet weak var restaurantname: UILabel!
    @IBOutlet weak var foodprice: UILabel!
    @IBOutlet weak var deliverytime: UILabel!
    @IBOutlet weak var deliverystatus: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
