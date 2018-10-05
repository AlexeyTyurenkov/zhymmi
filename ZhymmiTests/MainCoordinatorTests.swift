//
//  MainCoordinatorTests.swift
//  ZhymmiTests
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import XCTest
@testable import Zhymmi


class MainCoordinatorTests: XCTestCase {

    var coordinator: MAinCoordinator!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCleanStateModule() {
        coordinator = MAinCoordinator(dataStorage: UserDefaultsDataStorage(defaults: MockUserDefaults.clean()))
        XCTAssert(coordinator.currentModule() is ChooseTargetModule, "Should return your training programm chooser")
    }

}
