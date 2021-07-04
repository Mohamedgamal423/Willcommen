//
//  UserImagesColl.swift
//  Willcommen
//
//  Created by moh on 5/18/21.
//  Copyright © 2021 moh. All rights reserved.
//

import UIKit

class UserImagesColl: UICollectionViewCell {
    
    @IBOutlet weak var userimage: UIImageView!
    @IBOutlet weak var usertlbl: UILabel!
    
    func configurecell(user: AppUser) {
        userimage.image = UIImage(named: user.imagename)
        usertlbl.text = user.name
    }
}
