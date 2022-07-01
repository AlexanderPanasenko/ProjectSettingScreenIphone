//
//  SettingTitle.swift
//  ProjectSettingScreenIphone
//
//  Created by Alexander Panasenko on 30.06.2022.
//

import UIKit

class SettingslArowWithTitle: SettingsArrowCell {

    let detailLabel: UILabel = {
        let detailLabel = UILabel()
        detailLabel.textColor = .lightGray

        return detailLabel
    }()

    override func setupHierarchy() {
        super.setupHierarchy()
        addSubview(detailLabel)
    }

    override func setupLayout() {
        super.setupLayout()
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.trailingAnchor.constraint(equalTo: labelArrow.leadingAnchor, constant: -16).isActive = true
        detailLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }

}

