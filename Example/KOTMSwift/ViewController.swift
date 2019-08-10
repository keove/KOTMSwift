//
//  ViewController.swift
//  KOTMSwift
//
//  Created by cozdes on 07/20/2019.
//  Copyright (c) 2019 cozdes. All rights reserved.
//

import UIKit
import KOTMSwift
import Konnekt
import MaterialComponents


class ViewController: UIViewController {

    @IBOutlet weak var mdcTf: MDCTextField!
    @IBOutlet weak var mdcBtn: MDCButton!
    var u : UIView!
    let a = NSObject()
    @IBOutlet weak var tf: UITextField!
    @IBOutlet weak var btn: UIButton!
    @objc var varBtn : UIButton! // because if the variable is not exposed to the objc-runtime, it will not be translated
    @IBOutlet weak var sbLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var nilOutletLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        varBtn = UIButton()
        varBtn.set(kotmTag: "hobbydo_test_tag")
        varBtn.frame = CGRect(x: 20, y: 80, width: 200, height: 40)
        varBtn.setTitle("varBtn", for: .normal)
        varBtn.backgroundColor = .green
        self.view.addSubview(varBtn)
        
        Konnekt.post(url: "https://kotm.keove.com/service.aspx", fortype: .string, params: Paramz.create().add(name: "projectId", val: 21).give(), header: Paramz.create().give()) { (result, konnekt) in
            
            KOTM.setTranslationMap(map: (result as? String) ?? "")
            print(result)
            self.translate()
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

