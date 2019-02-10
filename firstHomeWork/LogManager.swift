//
//  LogManager.swift
//  firstHomeWork
//
//  Created by Денис Сидоренко on 10/02/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import Foundation

class LogManager {
    class func printCurrentState(text message: String, isLogged: Bool) {
        guard isLogged else { return }
        print(message)
    }
}
