//
//  PXLoaderViewController.swift
//  PXLoader
//
//  Created by Malek Belkahla on 03/08/17.
//  Copyright © 2017 Proxym-IT. All rights reserved.
//

import UIKit

class PXLoaderViewController: UIViewController {

    let LOADER_VEIEW_ALPHA = CGFloat(0.8)
    let LOADER_ANIMATION_DURATION = 0.5
    
    
    @IBOutlet weak var loaderImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white.withAlphaComponent(LOADER_VEIEW_ALPHA)
        self.rotateView(targetView: self.loaderImageView, duration: LOADER_ANIMATION_DURATION)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    private func rotateView(targetView: UIView, duration: Double = 0.5) {
        UIView.animate(withDuration: duration, delay: 0.0, options: .curveLinear, animations: {
            targetView.transform = targetView.transform.rotated(by: CGFloat(M_PI))
        }) { finished in
            self.rotateView(targetView: self.loaderImageView, duration: 0.5)
        }
    }

}
