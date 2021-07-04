//
//  ChatModels.swift
//  Willcommen
//
//  Created by moh on 6/17/21.
//  Copyright © 2021 moh. All rights reserved.
//

import MessageKit

struct Message: MessageType {
    
    var sender: SenderType
    
    var messageId: String
    
    var sentDate: Date
    
    var kind: MessageKind
    
    
}

struct Sender: SenderType {
    
    public var photoURL: String
    
    var senderId: String
    
    var displayName: String
    
    
}
