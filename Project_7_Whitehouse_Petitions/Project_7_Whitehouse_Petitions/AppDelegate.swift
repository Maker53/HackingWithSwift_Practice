//
//  AppDelegate.swift
//  Project_7_Whitehouse_Petitions
//
//  Created by Станислав on 20.05.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NavController")
        window?.rootViewController = vc
        
        if let tabBarController = window?.rootViewController as? UITabBarController {
            let vc2 = storyboard.instantiateViewController(withIdentifier: "NavController")
            vc2.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated, tag: 1)
            tabBarController.viewControllers?.append(vc2)
        }
        
        window?.makeKeyAndVisible()
        
        return true
    }
}
