//
//  CustomTxtField.swift
//  Willcommen
//
//  Created by moh on 5/14/21.
//  Copyright © 2021 moh. All rights reserved.
//

import UIKit

class CustomTxtField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultsetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        defaultsetup()
    }
    
    
    func defaultsetup() {
        
        layer.cornerRadius = 12
        backgroundColor = .white
        let color = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1).cgColor
        layer.borderWidth = 1
        layer.borderColor = color
        layer.masksToBounds = true
        let attributed = NSAttributedString(string: self.text!, attributes: [NSAttributedString.Key.kern: 0.77])
        self.attributedPlaceholder = attributed
        //setAttributedTitle(Buttonattributed, for: .normal)
    }
    
}
