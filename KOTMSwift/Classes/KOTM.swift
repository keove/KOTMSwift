//
//  KOTM.swift
//  HobbyDo
//
//  Created by Çağrı Özdeş on 19.07.2019.
//  Copyright © 2019 HobbyDo. All rights reserved.
//

import Foundation

public class KOTM {
    
   
    
    public static func translation(type:ElementType,tag:String) -> String! {
        let map = KOTM.map()
        if map != nil {
            let tagNode : NSDictionary! = map![tag] as? NSDictionary
            if tagNode != nil {
                let valNode = tagNode![type.rawValue] as? NSDictionary
                if valNode != nil {
                    let string : String! = valNode![KOTM.language()] as? String ?? nil
                    if string != nil {
                        return string.removingPercentEncoding
                    }
                    
                }
            }
        }
        
        return nil
        
    }
    
    

 
    
    public enum ElementType : String {
        case value = "value";
        case text = "text";
        case placeholder = "placeholder";
    }
    
    public static func setSelectedLanguage(lang:String) {
        UserDefaults.standard.set(lang, forKey: "kotm_selected_language")
    }
    
    
    
    public static func language() -> String {
        let lang : String! = UserDefaults.standard.string(forKey: "kotm_selected_language")
        if lang != nil {
            return lang
        }
        else {
            return "TR"
        }
    }
    
    public static func setTranslationMap(map:String) {
        UserDefaults.standard.set(map, forKey: "kotm")
    }
    
    public static func map() -> NSMutableDictionary! {
        let mapString : String! = UserDefaults.standard.string(forKey: "kotm")
        if mapString == nil || mapString.count < 1 {
            return nil
        }
        
        if let json = try? JSONSerialization.jsonObject(with: mapString.data(using: .utf8)!, options: .mutableContainers) as? NSMutableDictionary {
            
            return json
        }
        else {
            return nil
        }
        
    }
    
    
}
