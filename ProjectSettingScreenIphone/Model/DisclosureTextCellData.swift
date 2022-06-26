//
//  OpenTextCell.swift
//  ProjectSettingScreenIphone
//
//  Created by Alexander Panasenko on 03.06.2022.
//

import UIKit

public struct DisclosureTextCellData {
    public let text: String
    public let iconName: String
    public let iconBackgroundColor: UIColor
    public let disclosureText: String

    public init(text: String, disclosureText: String, iconName: String, iconBackgroundColor: UIColor) {
        self.text = text
        self.iconName = iconName
        self.iconBackgroundColor = iconBackgroundColor
        self.disclosureText = disclosureText
    }
}
