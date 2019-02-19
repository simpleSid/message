//
//  ViewController.swift
//  firstHomeWork
//
//  Created by Денис Сидоренко on 07/02/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var setFotoButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        print("frame is \(self.editButton.frame)")
        //Произойдет Run time ошибка потому что на этом этапе еще нету view и ее subview, соответственно размеры кнопки еще не заданы "frame is nil"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initSubViews()
//        print("frame is \(self.editButton.frame)")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        self.changeFramesForImage()
//        print("frame is 44\(self.editButton.frame)")
        // отличие связано с тем, что на в методе viewDidLoad размеры только устаналвиваются и еще не доступны для изменения, а установка их происходит в методе viewWillLayoutSubviews, что в свою очередь проверяется в методе viewDidLayoutSubviews. После установки свех границ, вью появляется на экране и мы получаем уведомление об этом от метода viewDidApear.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    @IBAction func showActionPressed(_ sender: UIButton) {
        self.displayFotoMenu()
    }
}
