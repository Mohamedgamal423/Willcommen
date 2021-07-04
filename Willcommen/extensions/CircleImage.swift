//
//  CircleView.swift
//  Map_task
//
//  Created by moh on 4/12/21.
//  Copyright © 2021 moh. All rights reserved.
//

import UIKit

class CircleImage: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        makecircle()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        makecircle()
    }
    
    func makecircle() {
        let radius = frame.height / 2
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }

}
