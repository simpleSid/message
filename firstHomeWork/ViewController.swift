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
        // Do any additional setup after loading the view, typically from a nib.
        self.printCurrentState(text: "\(#function)", isLogged: isLoggedVCState)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.printCurrentState(text: "\(#function)", isLogged: isLoggedVCState)
    }

    override func viewWillLayoutSubviews() {
        self.printCurrentState(text: "\(#function)", isLogged: isLoggedVCState)
    }
    
    override func viewDidLayoutSubviews() {
        self.printCurrentState(text: "\(#function)", isLogged: isLoggedVCState)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.printCurrentState(text: "\(#function)", isLogged: isLoggedVCState)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.printCurrentState(text: "\(#function)", isLogged: isLoggedVCState)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.printCurrentState(text: "\(#function)", isLogged: isLoggedVCState)
    }
    
    // MARK: print with option:
    private func printCurrentState(text message: String, isLogged: Bool) {
        guard isLogged else { return }
        print(message)
    }
}


