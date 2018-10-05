//
//  MAinCoordinator.swift
//  Zhymmi
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import Foundation


class MAinCoordinator {
    
    let dataStorage: DataStorageProtocol
    
    init(dataStorage: DataStorageProtocol ) {
        self.dataStorage = dataStorage
    }
    
    
    func currentModule() -> ModuleProtocol {
        return ChooseTargetModule()
    }
    
}
