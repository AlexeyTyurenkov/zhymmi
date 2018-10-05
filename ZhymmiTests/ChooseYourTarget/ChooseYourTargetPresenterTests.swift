//
//  ChooseYourTargetPresenterTests.swift
//  ZhymmiTests
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import XCTest
@testable import Zhymmi


class ChooseYourTargetPresenterTests: XCTestCase {

    
    var presenter: ChooseYourTargetPresenter!
    var interactor = MockChooseYourTargetInteractor()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        presenter = ChooseYourTargetPresenter(interactor: interactor)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInitialStateOfPresenter() {
        XCTAssertNil(presenter.view, "Initially view is empty")
        let view = MockChooseYourTargetView()
        presenter.viewIsLoaded(view)
        XCTAssertNotNil(presenter.view, "The view isn't empty after viewIsLoaded call")
    }

    func testPresentersMemoryLeak() {
        var mock: MockChooseYourTargetView? = MockChooseYourTargetView()
        presenter.view = mock
        XCTAssertNotNil(presenter.view, "The view isn't empty after viewIsLoaded call")
        mock = nil
        XCTAssertNil(presenter.view, "The view shouldn't be kept")
    }
    
    func testSettingsEmptyState() {
        interactor.setEmpty()
        let view = MockChooseYourTargetView()
        presenter.viewIsLoaded(view)
        XCTAssertEqual(view.upperLabel, "Ты не выбрал цель для жима!", "Presenter should set upper label")
    }
}
