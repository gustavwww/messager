//
//  MessageLabel.swift
//  Messager
//
//  Created by Gustav Wadström on 2017-01-11.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

class MessageLabel: UILabel {

    
    override func awakeFromNib() {
        
        prepareLabel()
        
    }
    
    func prepareLabel() {
        
        sizeToFit()
        layer.masksToBounds = true
        layer.cornerRadius = 25.5 / 2
        
    }
    

}
