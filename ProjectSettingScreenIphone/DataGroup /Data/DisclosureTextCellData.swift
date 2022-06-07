//
//  OpenTextCell.swift
//  ProjectSettingScreenIphone
//
//  Created by Alexander Panasenko on 03.06.2022.
//

import UIKit

public struct OpenTextCell {
    public let text: String
    public let icon: String
    public let backgroundColorIcon: UIColor
    public let openText: String
    
    public init(text: String, icon: String, backgroundColorIcon: UIColor, openText: String) {
        self.text = text
        self.icon = icon
        self.backgroundColorIcon = backgroundColorIcon
        self.openText = openText
    }
}
