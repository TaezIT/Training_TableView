//
//  ComponentCells.swift
//  Training_TableView
//
//  Created by Phạm Tuấn Anh on 26/04/2022.
//

import Foundation
import UIKit

struct ComponentsOfCells {
       let name : String
       let notification :String
       let labelStatus: String
       let imageNameAvatar: String
       let typeOfCell: Int
    init( name: String, notification: String, labelStatus: String, imageNameAvatar: String, typeOfCell: Int)
        {
        self.name = name
        self.notification = notification
        self.labelStatus = labelStatus
        self.imageNameAvatar = imageNameAvatar
        self.typeOfCell = typeOfCell
        }
}

