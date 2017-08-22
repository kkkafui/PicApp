//
//  CategoryCell.swift
//  Picapp
//
//  Created by Kafui Kumah on 8/10/17.
//  Copyright © 2017 Picapp Inc. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage = UIImageView()
    @IBOutlet weak var categoryName = UILabel()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
