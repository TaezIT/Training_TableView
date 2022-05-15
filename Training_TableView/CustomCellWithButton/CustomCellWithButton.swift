//
//  CustomSecondTableViewCell.swift
//  Training_TableView
//
//  Created by Phạm Tuấn Anh on 25/04/2022.
//

import UIKit

class CustomSecondTableViewCell: UITableViewCell {
    @IBOutlet var labelNotificationSecond: UILabel!
    @IBOutlet var labelStatusSecond: UILabel!
    @IBOutlet var imageAvatarSecond: UIImageView!
    @IBOutlet var buttonReject: UIButton!
    @IBOutlet var buttonAccept: UIButton!
    @IBOutlet weak var topConstrainStackView: NSLayoutConstraint!
    @IBOutlet weak var topConstrainLabelNotification: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    public func configureSecond(dataCell: ComponentsOfCells)
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
        self.labelNotificationSecond.attributedText = nameAttribute
        
        self.imageAvatarSecond.image = UIImage(named: dataCell.imageNameAvatar)
        self.labelStatusSecond.text = dataCell.labelStatus
        self.labelStatusSecond.font = UIFont(name: "Abel-Regular", size: 12)
        self.labelStatusSecond.textColor =  UIColor(red: 0.237, green: 0.244, blue: 0.338, alpha: 1)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        buttonReject.setButton()
        buttonAccept.setButton()
    }
    
}
