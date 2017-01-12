//
//  RoundShadow.swift
//  Messager
//
//  Created by Gustav Wadström on 2017-01-09.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

protocol Shadow {}

extension Shadow where Self: UIView {
    
    func putRoundShadow(_ shadowRadius: CGFloat) {
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowRadius = shadowRadius
        
    }
    
    func putUnderShadow(_ shadowOffset: CGSize) {
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = shadowOffset
        
    }
    
}
