//
//  ChooseYourViewController.swift
//  Zhymmi
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import UIKit

class ChooseYourViewController: UIViewController, ChooseYourTargetViewProtocol {

    

    var presenter: ChooseYourTargetPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewIsLoaded(self)
        // Do any additional setup after loading the view.
    }
    

    func setUpperLabel(_ text: String) {
        
    }

}
