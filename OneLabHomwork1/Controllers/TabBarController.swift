//
//  FirstScreen.swift
//  OneLabHomwork1
//
//  Created by Gazinho Dos Santos on 27.03.2023.
//

import UIKit

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        setUpTabs()
    }

    private func setUpTabs() {
        let simpleVC = SimpleVC()
        let nestedVC = NestedVC()
        let dynamicHeightColumnsVC = DynamicHeightColumnsVC()
        let twoEqualWidthVC = TwoEqualWidthVC()
        let threeEqualWidthButtonsVC = ThreeEqualWidthButtonsVC()
        
        simpleVC.navigationItem.largeTitleDisplayMode = .automatic
        nestedVC.navigationItem.largeTitleDisplayMode = .automatic
        dynamicHeightColumnsVC.navigationItem.largeTitleDisplayMode = .automatic
        twoEqualWidthVC.navigationItem.largeTitleDisplayMode = .automatic
        threeEqualWidthButtonsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: simpleVC)
        let nav2 = UINavigationController(rootViewController: nestedVC)
        let nav3 = UINavigationController(rootViewController: dynamicHeightColumnsVC)
        let nav4 = UINavigationController(rootViewController: twoEqualWidthVC)
        let nav5 = UINavigationController(rootViewController: threeEqualWidthButtonsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Simple",
                                       image: UIImage(systemName: "1.square.fill"),
                                       tag: 1)
        
        nav2.tabBarItem = UITabBarItem(title: "Nested",
                                       image: UIImage(systemName: "2.square.fill"),
                                       tag: 2)
        
        nav3.tabBarItem = UITabBarItem(title: "Dynamic",
                                       image: UIImage(systemName: "3.square.fill"),
                                       tag: 3)
        
        nav4.tabBarItem = UITabBarItem(title: "Two",
                                       image: UIImage(systemName: "4.square.fill"),
                                       tag: 4)
        
        nav5.tabBarItem = UITabBarItem(title: "Three",
                                       image: UIImage(systemName: "5.square.fill"),
                                       tag: 5)
        
        for nav in [nav1, nav2, nav3, nav4, nav5] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3, nav4, nav5],
                           animated: true)
    }
    
}
