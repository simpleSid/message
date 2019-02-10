//
//  ViewController.swift
//  firstHomeWork
//
//  Created by Денис Сидоренко on 07/02/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let logManager = LogManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logManager.isLoggedState = false
        
        logManager.printCurrentState(text: "\(#function)", isLogged: logManager.isLoggedState)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        logManager.printCurrentState(text: "\(#function)", isLogged: logManager.isLoggedState)
    }

    override func viewWillLayoutSubviews() {
        logManager.printCurrentState(text: "\(#function)", isLogged: logManager.isLoggedState)
    }
    
    override func viewDidLayoutSubviews() {
        logManager.printCurrentState(text: "\(#function)", isLogged: logManager.isLoggedState)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        logManager.printCurrentState(text: "\(#function)", isLogged: logManager.isLoggedState)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        logManager.printCurrentState(text: "\(#function)", isLogged: logManager.isLoggedState)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        logManager.printCurrentState(text: "\(#function)", isLogged: logManager.isLoggedState)
    }
}


