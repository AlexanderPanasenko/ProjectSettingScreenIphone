import UIKit

enum CellType: String {
    case `switch`
    case arrow
    case arrowWithTitle
}

final class ViewController: UIViewController, UITableViewDelegate {

    let settings = Section.getSettings()

    lazy var tableView: UITableView = {
        var tableView = UITableView()
        tableView.rowHeight = 44
        tableView.register(SettingsSwitchCell.self, forCellReuseIdentifier: CellType.switch.rawValue)
        tableView.register(SettingsArrowCell.self, forCellReuseIdentifier: CellType.arrow.rawValue)
        tableView.register(SettingslArowWithTitle.self, forCellReuseIdentifier: CellType.arrowWithTitle.rawValue)
        tableView.dataSource = self
        tableView.separatorStyle = .none
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }

    private func setupHierarchy() {
        view.addSubview(tableView)
    }

    private func setupLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false

        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        settings.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        settings[section].title
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settings[section].options.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let line = settings[indexPath.section].options[indexPath.row]

        switch settings[indexPath.section].options[indexPath.row].type {

        case .switch:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: CellType.switch.rawValue, for: indexPath
            ) as? SettingsSwitchCell else { return UITableViewCell() }

            cell.iconView.backgroundColor = line.iconeBackgrounColor
            cell.titleView.text = line.title
            cell.iconView.image = line.icone
            return cell

        case .arrow:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: CellType.arrow.rawValue, for: indexPath
            ) as? SettingsArrowCell else { return UITableViewCell() }
            cell.iconView.backgroundColor = line.iconeBackgrounColor
            cell.titleView.text = line.title
            cell.iconView.image = line.icone
            return cell

        case .arrowWithTitle:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: CellType.arrowWithTitle.rawValue, for: indexPath
            ) as? SettingslArowWithTitle else { return UITableViewCell() }
            cell.iconView.backgroundColor = line.iconeBackgrounColor
            cell.titleView.text = line.title
            cell.iconView.image = line.icone
            cell.detailLabel.text = line.detailLabel
            return cell
        }
    }
}
    
