//
//  ViewController.swift
//  KOTMSwift
//
//  Created by cozdes on 07/20/2019.
//  Copyright (c) 2019 cozdes. All rights reserved.
//

import UIKit
import KOTMSwift


class ViewController: UIViewController {

    var u : UIView!
    let a = NSObject()
    var lbl : UILabel!
    @IBOutlet weak var sbLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //u = UIView()
        //u.set(kotmTag: "slk")
        //sbLabel.set(kotmTag:"lololo")
        //rself.view.addSubview(u)
        //sbLabel.textColor = ColorCompatibility.label
        bottomLabel.set(kotmTag:"hobela")
        self.translate()
        //lbl = UILabel()
        //lbl.set(kotmTag: "mylabel")
        //self.view.addSubview(lbl)
        //lbl.text = "abcd"
        //self.translate()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

