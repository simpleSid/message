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
        
        self.profileImageView.clipsToBounds = true
        self.setFotoButton.clipsToBounds = true
        self.setFotoButton.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        
        self.editButton.layer.cornerRadius = 15
        self.editButton.layer.borderWidth = 1
        self.editButton.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        self.setNeedsStatusBarAppearanceUpdate()
//        print("frame is \(self.editButton.frame)")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }

    override func viewWillLayoutSubviews() {
//        print("frame is 1\(self.editButton.frame)")
    }
    
    override func viewDidLayoutSubviews() {
//        print("frame is 2\(self.editButton.frame)")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.profileImageView.layer.cornerRadius = self.setFotoButton.frame.width / 2
        self.setFotoButton.layer.cornerRadius = self.setFotoButton.frame.width / 2
        self.setFotoButton.imageEdgeInsets = UIEdgeInsets(
            top: self.setFotoButton.frame.width / 6,
            left: self.setFotoButton.frame.width / 6,
            bottom: self.setFotoButton.frame.width / 6,
            right: self.setFotoButton.frame.width / 6)
        
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
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let addFotoFromGallery = UIAlertAction(title: "выбрать фото", style: .default, handler: { (action) in
            self.chooseImagePickerAction(source: .photoLibrary)
        })
        let addFotoFromCamera = UIAlertAction(title: "сделать фото", style: .default, handler: { (action) in
            self.chooseImagePickerAction(source: .camera)
        })
        let cancel = UIAlertAction(title: "отмена", style: .cancel, handler: nil)
        alertController.addAction(addFotoFromCamera)
        alertController.addAction(addFotoFromGallery)
        alertController.addAction(cancel)
        self.present(alertController, animated: true, completion: nil)
    }
    

}

extension ProfileViewController {
    // MARK: Change status bar color
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func chooseImagePickerAction(source: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(source) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            imagePicker.sourceType = source
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
}

extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.profileImageView.image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }
}
