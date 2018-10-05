//
//  ChooseYourTargetViewTests.swift
//  ZhymmiTests
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import XCTest
@testable import Zhymmi

class ChooseYourTargetViewTests: XCTestCase {

    // MARK: Subject under test
    
    var sut: ChooseYourViewController!
    var window: UIWindow!
    
    // MARK: Test lifecycle
    
    override func setUp()
    {
        super.setUp()
        window = UIWindow()
        setupViewController()
    }
    
    override func tearDown()
    {
        window = nil
        super.tearDown()
    }
    
    // MARK: Test setup
    
    func setupViewController()
    {
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "ChooseYourTarget", bundle: bundle)
        sut = storyboard.instantiateInitialViewController() as? ChooseYourViewController
    }
    
    func loadView()
    {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }
    
    
    // MARK: Tests
    
    func testViewIsLoaded()
    {
        // Given
        let presenter = MockChooseYourTargetPresenter()
        sut.presenter = presenter

        
        // When
        loadView()
        
        // Then
        XCTAssertTrue(presenter.isLoaded, "viewDidLoad() should notify presenter")
    }
}
