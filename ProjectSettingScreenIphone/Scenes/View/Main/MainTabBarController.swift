//
//  MainTabBarController.swift
//  ProjectSettingScreenIphone
//
//  Created by Alexander Panasenko on 30.06.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    static func createTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()

        tabBarController.setViewControllers(
            [
                createTableViewControllerViewController(),
                createChildViewController(with: "Второй", backgroundColor: .systemRed, image: nil),
                createChildViewController(with: "Третий", backgroundColor: .systemBlue, image: nil)
            ], animated: false)

        return tabBarController
    }

    private static func createChildViewController(with title: String,
                                                  backgroundColor: UIColor,
                                                  image: UIImage?) -> UIViewController {

        let viewController = UIViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        viewController.view.backgroundColor = backgroundColor
        viewController.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: nil)
        viewController.title = title

        return navigationController
    }

    private static func createTableViewControllerViewController() -> UIViewController {

        let viewController = ViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        viewController.tabBarItem = UITabBarItem(title: "Настройки", image: nil, selectedImage: nil)
        viewController.title = "Настройки"

        return navigationController
    }
}



