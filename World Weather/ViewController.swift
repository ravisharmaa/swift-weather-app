//
//  ViewController.swift
//  World Weather
//
//  Created by Ravi Bastola on 12/6/17.
//  Copyright © 2017 Ravi Bastola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        CG Rect Instance
        
        let firstFrame = CGRect(x: 160, y: 240, width: 100, height: 150)
        let firstView  = UIView(frame: firstFrame)
        firstView.backgroundColor = UIColor.blue
        view.addSubview(firstView)
    }


}

