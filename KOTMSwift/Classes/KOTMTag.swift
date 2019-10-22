//
//  KOTMTag.swift
//  HobbyDo
//
//  Created by Çağrı Özdeş on 18.07.2019.
//  Copyright © 2019 HobbyDo. All rights reserved.
//

import Foundation
import ObjectiveC
import UIKit

extension NSObject {
    
   
    
    private struct KotmAssocationKeys {
        static var object = "kotmObjectAssociation"
    }
    
    public func set(kotmTag:String)->Void {
        objc_setAssociatedObject(self, &KotmAssocationKeys.object, kotmTag, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    
    public func getKotmTag() -> String! {
        return objc_getAssociatedObject(self, &KotmAssocationKeys.object) as? String
    }
    
    public func validationString() -> String {
        let tag : String? = getKotmTag()
        return KOTM.translation(type: .validation, tag: tag ?? "no_tag")
    }
    
    public func translate() {
        
        var outCount:UInt32 = 0;
        let properties = class_copyPropertyList(type(of: self), &outCount)
        
        for i in 0..<Int(outCount) {
            
            let prop = properties![i]
            let propName = property_getName(prop)
            let propNameString = String(cString: propName)
            let candidate : NSObject! = self.value(forKey: propNameString) as? NSObject
            
            if candidate == nil {
                continue
            }
            
            let tag : String! = candidate.getKotmTag()
            
            if tag != nil && tag.count > 0 {
                if candidate is UIButton {
                    let btn : UIButton! = candidate as? UIButton
                    var text : String! = KOTM.translation(type: .value, tag: tag)
                    if text == nil {
                        text = tag
                    }
                    btn.setTitle(text, for: .normal)
                }
                if candidate is UILabel {
                    let lbl : UILabel! = candidate as? UILabel
                    var text : String! = KOTM.translation(type: .value, tag: tag)
                    if text == nil {
                        text = tag
                    }
                    lbl.text = text
                }
                if candidate is UITextField {
                    let tf : UITextField! = candidate as? UITextField
                    var placeholder : String! = KOTM.translation(type: .value, tag: tag)
                    if placeholder == nil {
                        placeholder = tag
                    }
                    tf.placeholder = placeholder
                }
                if candidate is [String] {
                    
                }
                if candidate is NSString {
                    
                    var val : String! = KOTM.translation(type: .value, tag: tag)
                    if val == nil {
                        val = tag
                    }
                    self.setValue(val, forKey: propNameString)
                }
            }
        }
    }
    
}

extension UIView {
    @IBInspectable var KOTMTag : String! {
        get {
            return getKotmTag()
        }
        set {
            set(kotmTag: newValue)
        }
    }
}
