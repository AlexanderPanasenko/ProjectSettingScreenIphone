//
//  DefaultCell.swift
//  ProjectSettingScreenIphone
//
//  Created by Alexander Panasenko on 03.06.2022.
//

import UIKit

public struct DefaultCellData {
    public let text: String
    public let iconName: String
    public let iconBackgroundColor: UIColor

    public init(text: String, iconName: String, iconBackgroundColor: UIColor) {
        self.text = text
        self.iconName = iconName
        self.iconBackgroundColor = iconBackgroundColor
    }
}
