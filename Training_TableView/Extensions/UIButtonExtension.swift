//
//  ExtensionButton.swift
//  Training_TableView
//
//  Created by Phạm Tuấn Anh on 27/04/2022.
//

import Foundation
import UIKit
extension UIButton {
    func setButton()
    {
        self.layer.cornerRadius = 6
        self.titleLabel?.font = UIFont(name: "Abel", size: 14)
        self.contentVerticalAlignment = .center
        self.layer.borderWidth = 1
        self.layer.borderColor = CGColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1)
    }
}
