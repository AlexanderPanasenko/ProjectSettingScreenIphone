//
//  OpenTextCell.swift
//  ProjectSettingScreenIphone
//
//  Created by Alexander Panasenko on 03.06.2022.
//

import UIKit

public struct DisclosureTextCellData {
    public let text: String
    public let icon: String
    public let backgroundColorIcon: UIColor
    public let disclosureText: String
    
    public init(text: String, icon: String, backgroundColorIcon: UIColor, openText: String) {
        self.text = text
        self.icon = icon
        self.backgroundColorIcon = backgroundColorIcon
        self.disclosureText = openText
    }
}
