//
//  LoginBtn.swift
//  Messager
//
//  Created by Gustav Wadström on 2017-01-09.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

@IBDesignable
class LoginBtn: UIButton, Shadow {

    private var _width = 0
    private var _height = 0
    
    @IBInspectable var shadowWidth: Int = 0 {
        
        didSet {
            
            _width = shadowWidth
            
            putUnderShadow(CGSize(width: _width, height: _height))
            
        }
        
    }
    
    @IBInspectable var shadowHeight: Int = 0 {
        
        didSet {
            
            _height = shadowHeight
            
            
            putUnderShadow(CGSize(width: _width, height: _height))
            
        }
        
    }
    
    @IBInspectable var conrnerRadius: CGFloat = 0 {
        
        didSet {
            
            layer.cornerRadius = conrnerRadius
            
        }
        
    }
    

}
