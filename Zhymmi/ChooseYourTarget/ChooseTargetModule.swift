//
//  ChooseProgrammModule.swift
//  Zhymmi
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import Foundation
import UIKit

class ChooseTargetModule: ModuleProtocol {
    func controller() -> UIViewController {
        let storyBoard = UIStoryboard(name: "ChooseYourTarget", bundle: nil)
        let controller = storyBoard.instantiateInitialViewController() as! ChooseYourViewController
        let interactor = ChooseYourTargetInteractor(data: UserDefaultsDataStorage(defaults: UserDefaults.standard))
        controller.presenter = ChooseYourTargetPresenter(interactor: interactor)
        return controller
    }
}
