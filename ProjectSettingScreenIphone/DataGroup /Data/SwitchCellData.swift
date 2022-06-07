//
//  SwitchCell.swift
//  ProjectSettingScreenIphone
//
//  Created by Alexander Panasenko on 03.06.2022.
//

import UIKit

public struct SwitchCellData {
    public let text: String
    public let icon: String
    public let backgroundColorIcon: UIColor
    public let isOnByDefault: Bool
    
    public init(text: String, icon: String, backgroundColoricon: UIColor, isOnByDefault: Bool) {
        self.text = text
        self.icon = icon
        self.backgroundColorIcon = backgroundColoricon
        self.isOnByDefault = isOnByDefault
    }
}
