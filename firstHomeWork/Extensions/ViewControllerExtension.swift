//
//  ViewControllerExtension.swift
//  firstHomeWork
//
//  Created by Денис Сидоренко on 19/02/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import Foundation
import UIKit

extension ProfileViewController {
    func initSubViews() {
        self.profileImageView.clipsToBounds = true
        self.setFotoButton.clipsToBounds = true
        self.setFotoButton.backgroundColor = UIColor.biscay
        
        self.editButton.layer.cornerRadius = 15
        self.editButton.layer.borderWidth = 1
        self.editButton.layer.borderColor = (UIColor.white).cgColor
        
        self.setNeedsStatusBarAppearanceUpdate()
    }
    
    func changeFramesForImage() {
        self.profileImageView.layer.cornerRadius = self.setFotoButton.frame.width / 2
        self.setFotoButton.layer.cornerRadius = self.setFotoButton.frame.width / 2
        self.setFotoButton.imageEdgeInsets = UIEdgeInsets(
            top: self.setFotoButton.frame.width / 6,
            left: self.setFotoButton.frame.width / 6,
            bottom: self.setFotoButton.frame.width / 6,
            right: self.setFotoButton.frame.width / 6)
    }
    
    func displayFotoMenu() {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let addFotoFromGallery = UIAlertAction(title: "выбрать фото", style: .default, handler: { (_) in
            self.chooseImagePickerAction(source: .photoLibrary)
        })
        let addFotoFromCamera = UIAlertAction(title: "сделать фото", style: .default, handler: { (_) in
            self.chooseImagePickerAction(source: .camera)
        })
        let deleteFoto = UIAlertAction(title: "удалить фото", style: .destructive) { (_) in
            self.profileImageView.image = UIImage(named: "placeholder-user")
        }
        let cancel = UIAlertAction(title: "отмена", style: .cancel, handler: nil)
        alertController.addAction(addFotoFromCamera)
        alertController.addAction(addFotoFromGallery)
        alertController.addAction(deleteFoto)
        alertController.addAction(cancel)
        self.present(alertController, animated: true, completion: nil)
    }
}

extension ProfileViewController {
    // MARK: Change status bar color
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func chooseImagePickerAction(source: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(source) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            imagePicker.sourceType = source
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.profileImageView.image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }
}
