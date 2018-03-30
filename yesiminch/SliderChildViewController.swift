//
//  SliderChildViewController.swift
//  yesiminch
//
//  Created by astghik on 3/30/18.
//  Copyright © 2018 astghik. All rights reserved.
//

import UIKit

class SliderChildViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageName = imageName {
            imageView.image = UIImage(named: imageName)
        }
    }
}
