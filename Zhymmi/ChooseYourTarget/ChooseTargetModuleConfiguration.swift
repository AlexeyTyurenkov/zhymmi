//
//  ChooseTargetModuleConfiguration.swift
//  Zhymmi
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import Foundation


protocol ChooseTargetModuleDelegate {
    
}


struct ChooseTargetModuleConfiguration {
    
    var targetWeight: Int?
    var isTargetRepeats: Int?
    var delegate: ChooseTargetModuleDelegate?
    
}
