//
//  ButtonView.swift
//  Picapp
//
//  Created by Kafui Kumah on 7/23/17.
//  Copyright © 2017 Picapp Inc. All rights reserved.
//

import UIKit

@IBDesignable class ButtonView: UIButton {

    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    
}

