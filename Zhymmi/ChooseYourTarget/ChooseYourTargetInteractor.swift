//
//  ChooseYourTargetInteractor.swift
//  Zhymmi
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import Foundation


class ChooseYourTargetInteractor: ChooseYourTargetInteractorProtocol {
    
    var isInitialState: Bool {
        return dataStorage.isClean
    }
    
    private var dataStorage: DataStorageProtocol
    
    
    init(data: DataStorageProtocol) {
        self.dataStorage = data
    }
}
