//
//  CustomBtn.swift
//  Willcommen
//
//  Created by moh on 5/14/21.
//  Copyright © 2021 moh. All rights reserved.
//

import UIKit

class CustomBtn: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultsetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        defaultsetup()
    }
    
    func defaultsetup() {
        layer.cornerRadius = self.layer.frame.height/2
        layer.masksToBounds = true
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [#colorLiteral(red: 0.2784313725, green: 0.5607843137, blue: 0.8941176471, alpha: 1).cgColor, #colorLiteral(red: 0.3607843137, green: 0.8274509804, blue: 0.7764705882, alpha: 1).cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        layer.addSublayer(gradient)
        let attributed = NSAttributedString(string: self.titleLabel!.text!, attributes: [NSAttributedString.Key.kern: 1])
        setAttributedTitle(attributed, for: .normal)
    }
//    func makewhitebtn() {
//        backgroundColor = .white
//        let color = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1).cgColor
//        layer.borderWidth = 1
//        layer.borderColor = color
//    }

}
