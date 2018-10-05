//
//  ChooseYourTargetPresenter.swift
//  Zhymmi
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import Foundation

protocol ChooseYourTargetViewProtocol: class {
    var presenter: ChooseYourTargetPresenterProtocol! { get }
    
    func setUpperLabel(_ text: String)
    
}

protocol ChooseYourTargetPresenterProtocol {
    func viewIsLoaded(_: ChooseYourTargetViewProtocol)
}

protocol ChooseYourTargetInteractorProtocol {
    var isInitialState: Bool { get }
}


class ChooseYourTargetPresenter: ChooseYourTargetPresenterProtocol {
    
    weak var view: ChooseYourTargetViewProtocol!
    var data: ChooseYourTargetInteractorProtocol!
    
    
    func viewIsLoaded(_ view: ChooseYourTargetViewProtocol) {
        self.view = view
    }
    
    init(interactor: ChooseYourTargetInteractorProtocol) {
        data = interactor
    }
    
}
