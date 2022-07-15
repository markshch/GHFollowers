//
//  GFTabBarController.swift
//  GHFollowers
//
//  Created by Mark ⠀ on 3/17/22.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createNavigationControllers()
        UITabBar.appearance().tintColor = .systemGreen
        self.viewControllers = createNavigationControllers()
        
    }
    
    
    func createNavigationControllers() -> [UINavigationController] {
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        let favoritesVC = FavoritesListVC()
        favoritesVC.title = "Favorites"
        favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return [UINavigationController(rootViewController: searchVC), UINavigationController(rootViewController: favoritesVC)]
        
    }
    
    func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemGreen
    }

}
