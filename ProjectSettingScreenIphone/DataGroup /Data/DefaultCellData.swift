//
//  DefaultCell.swift
//  ProjectSettingScreenIphone
//
//  Created by Alexander Panasenko on 03.06.2022.
//

import UIKit

public struct DefaultCellData {
    public let text: String
    public let icon: String
    public let backgroundColorIcon: UIColor
    
    public init(text: String, icon: String, backgroundColorIcon: UIColor) {
        self.text = text
        self.icon = icon
        self.backgroundColorIcon = backgroundColorIcon
    }
}
