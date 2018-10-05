//
//  MockChooseYourTargetView.swift
//  ZhymmiTests
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import Foundation
@testable import Zhymmi


class MockChooseYourTargetView: ChooseYourTargetViewProtocol {
    func setUpperLabel(_ text: String) {
        upperLabel = text
    }
    
    var presenter: ChooseYourTargetPresenterProtocol!
    var upperLabel: String = ""
    
    
}
