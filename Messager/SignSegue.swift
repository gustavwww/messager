//
//  SignSegue.swift
//  Messager
//
//  Created by Gustav Wadström on 2017-01-09.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

class SignSegue: UIStoryboardSegue {
    
    override func perform() {
        
        let firstVCView = self.source.view!
        let secondVCView = self.destination.view!
        
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        secondVCView.frame = CGRect(x: screenWidth, y: 0.0, width: screenWidth, height: screenHeight)
        
        let window = UIApplication.shared.keyWindow
        window?.addSubview(secondVCView)
        
        UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseOut], animations: {
            
            firstVCView.center.x = -firstVCView.center.x
            secondVCView.center.x = secondVCView.center.x - secondVCView.bounds.width
            
        }) { (Finished) in
            
            self.source.present(self.destination, animated: false, completion: nil)
            
        }
        
        
    }
    
    

}
