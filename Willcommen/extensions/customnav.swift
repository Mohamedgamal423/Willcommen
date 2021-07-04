//
//  customnav.swift
//  Willcommen
//
//  Created by moh on 5/18/21.
//  Copyright © 2021 moh. All rights reserved.
//

import UIKit

class customnav: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Gradient.makegradient(grcolors: [#colorLiteral(red: 0.2784313725, green: 0.5607843137, blue: 0.8941176471, alpha: 1), #colorLiteral(red: 0.3607843137, green: 0.8274509804, blue: 0.7764705882, alpha: 1)], view: navigationBar)
        self.navigationBar.layer.frame = CGRect(x: 0, y: 0, width: navigationBar.frame.width, height: 200)
    }
    
    

}
