//
//  ViewController.swift
//  Willcommen
//
//  Created by moh on 5/14/21.
//  Copyright © 2021 moh. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    
    @IBOutlet weak var ovalview: UIView!
    @IBOutlet weak var pagecont: UIPageControl!
    @IBOutlet weak var collview: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ovalview.layer.cornerRadius = 80
        ovalview.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        //Gradient.makegradient(grcolors: [#colorLiteral(red: 0.2784313725, green: 0.5607843137, blue: 0.8941176471, alpha: 1), #colorLiteral(red: 0.3607843137, green: 0.8274509804, blue: 0.7764705882, alpha: 1)], view: pagecont)
        collview.delegate = self
        collview.dataSource = self
    }

}
extension WelcomeVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
}

