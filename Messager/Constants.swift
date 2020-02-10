//
//  Constants.swift
//  Messager
//
//  Created by Gustav Wadström on 2017-01-12.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import Foundation
import Firebase

let dbRef = FIRDatabase.database().reference()

class Constants {
    
    static let shared = Constants()
    
    let globalMsgs = dbRef.child("messages/global")
    
}
