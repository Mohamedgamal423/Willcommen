//
//  Gradient.swift
//  Willcommen
//
//  Created by moh on 5/14/21.
//  Copyright © 2021 moh. All rights reserved.
//

import UIKit

class Gradient {
    
   class func makegradient(grcolors: [CGColor], view: UIView) {
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = grcolors
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        view.layer.addSublayer(gradient)
        
    }
}
