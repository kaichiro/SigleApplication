//
//  PresentManager.swift
//  SigleApplication
//
//  Created by Aluno on 05/04/2019.
//  Copyright © 2019 kaichiro. All rights reserved.
//

import Foundation

class PersistenceManager:NSObject
{
    class func save(value:Bool)
    {
        let defaults = UserDefaults.standard
        defaults.set(value,forKey: "notification")
    }
    
    class func getValue()->Bool {
        let defaults = UserDefaults.standard
        let value = defaults.bool(forKey: "notification")
        return value
        
    }
}
