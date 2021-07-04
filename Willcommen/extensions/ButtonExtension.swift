//
//  ButtonExtension.swift
//  Willcommen
//
//  Created by moh on 5/14/21.
//  Copyright © 2021 moh. All rights reserved.
//

import UIKit

extension UIButton {
    
    func makewhitebtn() {
        backgroundColor = .white
        let color = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1).cgColor
        layer.cornerRadius = bounds.height / 2
        layer.masksToBounds = true
        layer.borderWidth = 1
        layer.borderColor = color
    }

}
