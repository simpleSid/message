//
//  ViewController.swift
//  firstHomeWork
//
//  Created by Денис Сидоренко on 07/02/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let isLoggedVCState = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LogManager.printCurrentState(text: "\(#function)", isLogged: isLoggedVCState)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        LogManager.printCurrentState(text: "\(#function)", isLogged: isLoggedVCState)
    }

    override func viewWillLayoutSubviews() {
        LogManager.printCurrentState(text: "\(#function)", isLogged: isLoggedVCState)
    }
    
    override func viewDidLayoutSubviews() {
        LogManager.printCurrentState(text: "\(#function)", isLogged: isLoggedVCState)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        LogManager.printCurrentState(text: "\(#function)", isLogged: isLoggedVCState)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        LogManager.printCurrentState(text: "\(#function)", isLogged: isLoggedVCState)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        LogManager.printCurrentState(text: "\(#function)", isLogged: isLoggedVCState)
    }
}


