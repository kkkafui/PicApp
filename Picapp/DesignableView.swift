//
//  DesignableView.swift
//  Picapp
//
//  Created by Kafui Kumah on 7/22/17.
//  Copyright © 2017 Picapp Inc. All rights reserved.
//

import UIKit

@IBDesignable class DesignableView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }

}
