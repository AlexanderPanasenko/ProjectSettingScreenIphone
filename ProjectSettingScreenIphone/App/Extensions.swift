//
//  Extensions.swift
//  ProjectSettingScreenIphone
//
//  Created by Alexander Panasenko on 30.06.2022.
//

import UIKit

extension SettingsCellTableView {
    func addSubviews(_ subviews: UIView...) {
            subviews.forEach { addSubview($0) }
        }
}

