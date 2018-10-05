//
//  DataStorage.swift
//  Zhymmi
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import Foundation


protocol DataStorageProtocol {
    var isClean: Bool { get }
}


class UserDefaultsDataStorage: DataStorageProtocol {
    
    let defaults: UserDefaults
    
    required init(defaults: UserDefaults) {
        self.defaults = defaults
    }
    
    var isClean: Bool {
        return !defaults.bool(forKey: "targetSet")
    }
    
}
