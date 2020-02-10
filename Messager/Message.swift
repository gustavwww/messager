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
    private var _sender: String!
    private var _postDate: String!
    
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
    
    var sender: String {
        if _sender == nil {
            _sender = ""
        }
        
        return _sender
    }
    
    var postDate: String {
        if _postDate == nil {
            _postDate = ""
        }
        
        return _postDate
    }
    
    init(msgId: String, msgData: [String: AnyObject]) {
        
        _id = msgId
        
        
        if let text = msgData["text"] as? String {
            _text = text
            
        }
        
        if let sender = msgData["sender"] as? String {
            _sender = sender
            
        }
        
        if let postDate = msgData["date"] as? String {
            _postDate = postDate
            
        }
        
    }
    
}
