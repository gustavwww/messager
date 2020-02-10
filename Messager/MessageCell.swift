//
//  MessageCell.swift
//  Messager
//
//  Created by Gustav Wadström on 2017-01-11.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    
    
    @IBOutlet weak var textLbl: MessageLabel!
    
    
    func configureCell(_ msg: Message) {
        
        textLbl.text = msg.text
        
    }

}
