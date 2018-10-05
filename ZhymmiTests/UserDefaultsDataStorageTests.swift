//
//  UserDefaultsDataStorageTests.swift
//  ZhymmiTests
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import XCTest
@testable import Zhymmi

class UserDefaultsDataStorageTests: XCTestCase {

    
    var storage: UserDefaultsDataStorage!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        storage = UserDefaultsDataStorage(defaults: MockUserDefaults.clean())
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testReadCleanState() {
        storage = UserDefaultsDataStorage(defaults: MockUserDefaults.clean())
        XCTAssert(storage.isClean, "Should not containt state")
    }

}
