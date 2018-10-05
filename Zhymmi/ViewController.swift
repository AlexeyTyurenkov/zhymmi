//
//  ViewController.swift
//  Zhymmi
//
//  Created by Aleksey Tyurenkov on 10/4/18.
//  Copyright © 2018 com.ovt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let coordinator = MAinCoordinator(dataStorage: UserDefaultsDataStorage(defaults: UserDefaults.standard))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let controller = coordinator.currentModule().controller()
        self.show(controller, sender: nil)
    }
    
    
}

