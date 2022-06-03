//
//  SwitchCell.swift
//  ProjectSettingScreenIphone
//
//  Created by Alexander Panasenko on 03.06.2022.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    static let identifier = "SwitchtableViewCell"
    
    private lazy var iconContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        
        return view
    }()
    
    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        
        return label
    }()
    
    private lazy var switchButton: UISwitch = {
        let button = UISwitch()
        
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(label)
        contentView.addSubview(iconContainer)
        iconContainer.addSubview(iconImageView)
        accessoryView = switchButton
        
        contentView.clipsToBounds = true
        accessoryType = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let size: CGFloat = contentView.frame.size.height - 12
        iconContainer.frame = CGRect(x: 15, y: 6, width: size, height: size)
        
        let imageSize: CGFloat = size / 1.5
        iconImageView.frame = CGRect(x: (size - imageSize) / 2, y: (size - imageSize) / 2,
                                     width: imageSize, height: imageSize)
        
        label.frame = CGRect(
            x: 25 + iconContainer.frame.size.width,
            y: 0,
            width: contentView.frame.size.width - 20 - iconContainer.frame.size.width - 10,
            height: contentView.frame.size.height)
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        
        iconImageView.image = nil
        label.text = nil
        iconContainer.backgroundColor = nil
        switchButton.isOn = false
    }
    
    public func configure(with data: SwitchCell) {
        label.text = data.text
        iconImageView.image = UIImage(systemName: data.icon)?.withTintColor(.white, renderingMode: .alwaysOriginal)
        iconContainer.backgroundColor = data.backgroundColorIcon
        switchButton.setOn(data.isOnByDefault, animated: true)
        
        switchButton.addTarget(self, action: #selector(self.switchChanged(_:)), for: .valueChanged)
    }
    
    @objc func switchChanged(_ sender : UISwitch!) {
        print("переключатель строк таблицы изменен")
        print("Переключатель находится в положении \(sender.isOn ? "ВКЛ" : "ВЫКЛ")")
    }
    }
    

