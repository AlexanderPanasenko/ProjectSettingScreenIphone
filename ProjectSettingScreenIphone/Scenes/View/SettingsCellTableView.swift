//
//  DefaultCell.swift
//  ProjectSettingScreenIphone
//
//  Created by Alexander Panasenko on 03.06.2022.
//

import UIKit

class SettingsCellTableView: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    lazy var iconView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .center
        image.tintColor = .white
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 8
        return image
    }()

    lazy var titleView = UILabel()
    lazy var separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()

    func setupHierarchy() {
        addSubviews(iconView, titleView, separatorView)
    }

    func setupLayout() {
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        iconView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        iconView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        iconView.widthAnchor.constraint(equalTo: iconView.heightAnchor, multiplier: 1).isActive = true

        titleView.translatesAutoresizingMaskIntoConstraints = false
        titleView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleView.leadingAnchor.constraint(equalTo: iconView.trailingAnchor, constant: 16).isActive = true

        separatorView.translatesAutoresizingMaskIntoConstraints = false
        separatorView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        separatorView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60).isActive = true
        separatorView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
    }
}



