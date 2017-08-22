//
//  ProfCell.swift
//  Picapp
//
//  Created by Kafui Kumah on 8/16/17.
//  Copyright © 2017 Picapp Inc. All rights reserved.
//

import UIKit

class ProfCell: UITableViewCell {
    
    @IBOutlet weak var itemImg : UIImageView!
    @IBOutlet weak var labelA : UILabel!
    @IBOutlet weak var labelB : UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
