//
//  ViewController.swift
//  yesiminch
//
//  Created by astghik on 3/29/18.
//  Copyright © 2018 astghik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties

    @IBOutlet weak var scrollView: UIScrollView!
    
    var photoNames: [String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    let widthMultiplier: CGFloat = 2/3
    
    
    // MARK: - ViewController lifecicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createPageViewOnScrollView(from: photoNames, appendTo: scrollView)
    }
    
    
    // MARK: - Private Methods
    
    private func createPageViewOnScrollView (from photoNames: [String], appendTo scrollView: UIScrollView) {
        for i in 0 ..< photoNames.count {
        
            let childVC = storyboard?.instantiateViewController(withIdentifier: "childVC") as! SliderChildViewController
            childVC.imageName = photoNames[i]
            
            childVC.view.frame = CGRect(
                x: view.frame.size.width * CGFloat(i) * widthMultiplier,
                y: 0,
                width: scrollView.bounds.width,
                height: scrollView.frame.size.height
            )
            addChildViewController(childVC)
            scrollView.addSubview(childVC.view!)
        }
        
        scrollView.isPagingEnabled = true

        scrollView.contentSize = CGSize(
            width: view.frame.size.width * CGFloat(photoNames.count) * widthMultiplier,
            height: scrollView.frame.size.height
        )
        
        scrollView.clipsToBounds = false
    }
}
