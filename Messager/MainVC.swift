//
//  MainVC.swift
//  Messager
//
//  Created by Gustav Wadström on 2017-01-09.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit
import Firebase

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var msgField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    
    var user: FIRUser!
    
    var msgs: [Message]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        msgs = [Message]()
        
        Constants.shared.globalMsgs.queryOrdered(byChild: "date").observe(.value, with: { (snapshot) in
            
            self.msgs = []
            
            if let snapshot = snapshot.children.allObjects as? [FIRDataSnapshot] {
                
                for snap in snapshot {
                    //Go through every message
                    
                    if let dict = snap.value as? Dictionary<String, AnyObject> {
                        
                        let msg = Message(msgId: snap.key, msgData: dict)
                        self.msgs.append(msg)
                        
                    }
                    
                    
                }
                
            }
            
            self.tableView.reloadData()
        })
        
        
    }

    @IBAction func sendBtnPressed(_ sender: UIButton) {
        
        if msgField.text == "" || msgField.text == nil {
            
            return
        }
        let text = msgField.text!
        let sender = user.uid
        let date = FIRServerValue.timestamp()
        
        let msgData = ["text": text, "sender": sender, "date": date] as Dictionary<String, Any>
        
        Constants.shared.globalMsgs.childByAutoId().setValue(msgData)
        
        msgField.text = ""
        tableView.reloadData()
    }
    
    
    @IBAction func backPressed(_ sender: UIButton) {
        //Sing out user
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath) as? MessageCell {
            
            let message = msgs[indexPath.row]
            cell.configureCell(message)
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return msgs.count
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
