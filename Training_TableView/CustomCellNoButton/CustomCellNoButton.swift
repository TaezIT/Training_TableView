//
//  CustomFirstTableViewCell.swift
//  Training_TableView
//
//  Created by Phạm Tuấn Anh on 25/04/2022.
//

import UIKit

class CustomFirstTableViewCell: UITableViewCell {
    @IBOutlet var labelNotificationFirst: UILabel!
    @IBOutlet var labelStatusFirst: UILabel!
    @IBOutlet var imageAvatarFirst: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageAvatarFirst.contentMode = .scaleAspectFit
    }
    public func configureFirst(dataCell: ComponentsOfCells)
    {
        let nameAttribute = NSMutableAttributedString()
            .attrStr(text: dataCell.name,
                     font: UIFont(name: "NotoSans-Medium", size: 14),
                     textColor: UIColor(red: 0.024, green: 0.02, blue: 0.094, alpha: 1),
                     alignment: .left)
            .attrStr(text: dataCell.notification,
                     font: UIFont(name: "Abel-Regular", size: 16),
                     textColor: UIColor(red: 0.024, green: 0.02, blue: 0.094, alpha: 1),
                     alignment: .left)
        self.labelNotificationFirst.attributedText = nameAttribute
        self.labelNotificationFirst.contentMode = .top
        self.imageAvatarFirst.image = UIImage(named: dataCell.imageNameAvatar)
        self.labelStatusFirst.text = dataCell.labelStatus
        self.labelStatusFirst.font = UIFont(name: "Abel-Regular", size: 12)
        self.labelStatusFirst.textColor = UIColor(red: 0.237, green: 0.244, blue: 0.338, alpha: 1)
    }
        override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        }
    
    
}
