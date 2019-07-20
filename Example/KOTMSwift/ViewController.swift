//
//  ViewController.swift
//  KOTMSwift
//
//  Created by cozdes on 07/20/2019.
//  Copyright (c) 2019 cozdes. All rights reserved.
//

import UIKit
import KOTMSwift

@objc class ViewController: UIViewController {

    var u : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        u = UIView()
        u.set(kotmTag: "slk")
        self.view.addSubview(u)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

