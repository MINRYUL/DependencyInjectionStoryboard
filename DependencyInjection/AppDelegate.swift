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
    guard let viewController = ViewController.instantiate(
      viewModel: MainViewModel(repository: DefaultRepository(load: "URL")),
      storyboardName: "Main",
      identifier: "ViewController"
    ) else {
      return true
    }
    
    window?.rootViewController = viewController
    window?.makeKeyAndVisible()
    
    return true
  }

}

struct MockRP: MainRepository {
  var input: MainRepositoryInput
  var output: MainRepositoryOutput
  
  init(load: String) {
    self.input = MainRepositoryInput()
    self.output = MainRepositoryOutput()
    
    self.load = load
  }
  
  var load: String
}
