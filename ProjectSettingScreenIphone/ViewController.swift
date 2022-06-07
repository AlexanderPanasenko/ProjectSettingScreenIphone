//
//  ViewController.swift
//  ProjectSettingScreenIphone
//
//  Created by MacBook Pro on 01.06.2022.
//

import UIKit

class ViewController: UIViewController {

    private var data = [SectionData(cells: [.switchCell(withData: SwitchCellData(text: "Авиарежим", icon: "airplane", backgroundColoricon: .orange, isOnByDefault: true))])]
    
    private lazy var tableView: UITableView = {
        var table = UITableView(frame: .zero, style: .grouped)
        table.register(TableViewDefaultCell.self, forCellReuseIdentifier: TableViewDefaultCell.identifier)
        table.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.identifier)
        table.register(DisclosureButtonTableViewCell.self, forCellReuseIdentifier: DisclosureButtonTableViewCell.identifier)
        table.allowsSelection = true;
        
        return table
    }()

// MARK: - Lifecycle
    override func 
}

