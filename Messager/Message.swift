//
//  Message.swift
//  Messager
//
//  Created by Gustav Wadström on 2017-01-11.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import Foundation

class Message {
    
    private var _text: String!
    private var _id: String!
    
    var text: String {
        if _text == nil {
            _text = ""
        }
        
        return _text
    }
    
    var id: String {
        if _id == nil {
            _id = ""
        }
        
        return _id
    }
    
    init(msg: String, id: String) {
        
        _text = msg
        _id = id
        
    }
    
}
