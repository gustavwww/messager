//
//  HeaderView.swift
//  Messager
//
//  Created by Gustav Wadström on 2017-01-09.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

@IBDesignable
class HeaderView: UIView, Shadow {

    @IBInspectable var shadowRadius: CGFloat = 0 {
        
        didSet {
            
            putRoundShadow(shadowRadius)
            
        }
        
    }

}
