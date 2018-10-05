//
//  MockChooseYourTargetPresenter.swift
//  ZhymmiTests
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import Foundation
@testable import Zhymmi


class MockChooseYourTargetPresenter: ChooseYourTargetPresenterProtocol {
    
    var isLoaded = false
    
    func viewIsLoaded(_: ChooseYourTargetViewProtocol) {
        isLoaded = true
    }
    
}
