//
//  ChooseTagetModuleTests.swift
//  ZhymmiTests
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import XCTest
@testable import Zhymmi

class ChooseTagetModuleTests: XCTestCase {

    let module = ChooseTargetModule()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testChooseTarget() {
        
        let controller = module.controller() as? ChooseYourViewController
        XCTAssertNotNil(controller, "Controller should have type of ChooseYour controller")
        XCTAssertNotNil(controller?.presenter, "Controller should have a presenter")
        XCTAssertNotNil(controller?.presenter, "Controller should have a presenter")
    }

    func testPresenterCrreation() {
        guard let controller = module.controller() as? ChooseYourViewController else {XCTFail("Controller should be typed "); return }
        guard let presenter = controller.presenter as? ChooseYourTargetPresenter else { XCTFail("Presenter should exists after ceration"); return }
        
        XCTAssertNotNil(presenter.data, "Interactor should be configured")
    }
    
}
