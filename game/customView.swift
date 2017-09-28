//
//  customView.swift
//  game
//
//  Created by Александр on 13.08.17.
//  Copyright © 2017 Александр. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView{
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            layer.cornerRadius = cornerRadius
        }
    }
}
