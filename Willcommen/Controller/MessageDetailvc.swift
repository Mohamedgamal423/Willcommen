//
//  MessageDetailvc.swift
//  Willcommen
//
//  Created by moh on 6/17/21.
//  Copyright © 2021 moh. All rights reserved.
//

import UIKit
import MessageKit

class MessageDetailvc: MessagesViewController {

    var Messages = [Message]()
    private var selfsender = Sender(photoURL: "", senderId: "1", displayName: "moh")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Messages = [Message(sender: selfsender, messageId: "1", sentDate: Date(), kind: .text("hello world")), Message(sender: selfsender, messageId: "1", sentDate: Date(), kind: .text("me you")), Message(sender: selfsender, messageId: "1", sentDate: Date(), kind: .text("i love you"))]
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
    }
    

}

extension MessageDetailvc: MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate {
    func currentSender() -> SenderType {
        return selfsender
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        Messages[indexPath.section]
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        Messages.count
    }
    
    
}
