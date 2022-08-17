//
//  AppDelegate.swift
//  DependencyInjection
//
//  Created by 김민창 on 2022/03/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        guard let viewController = GenericViewController
            .instantiate(
                viewModel: DefaultGenericViewModel(),
                storyBoardName: "Main",
                identifier: GenericViewController.className,
                bundle: nil
            ) else {
            return true
        }
        
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    
        return true
    }

}

