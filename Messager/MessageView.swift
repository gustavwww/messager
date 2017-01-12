//
//  MessageView.swift
//  Messager
//
//  Created by Gustav Wadström on 2017-01-10.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

enum MessageType: String {
    
    case error = "An Error occured while singing in."
    
}

class MessageView: UIView {
    
    var view: UIView?
    
    func setupView(view: UIView, msgType: MessageType) {
        
        self.view = view
        
        bounds.size = CGSize(width: 200, height: 150)
        center = view.center
        
        layer.backgroundColor = UIColor(red: 30, green: 136, blue: 229, alpha: 1).cgColor
        layer.backgroundColor = UIColor(red: CGFloat(30) / 255, green: CGFloat(136) / 255, blue: CGFloat(30) / 255, alpha: 1).cgColor
        layer.cornerRadius = 3.0
        layer.opacity = 0.6
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 5.0
        
        view.addSubview(self)
        
    }
    
    func removeView() {
        
        self.removeFromSuperview()
        
    }
    

}
