//
//  SceneDelegate.swift
//  CoordinaterApp
//
//  Created by Phil Wright on 4/15/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Setup the window
        let window = UIWindow(windowScene: windowScene)
        
        let viewController = ProfileViewController()
        viewController.view.backgroundColor = .white
        
        // Set up the app coordinator
        let navigationController = UINavigationController(rootViewController: viewController)
        appCoordinator = AppCoordinator(navigationController: navigationController)
        appCoordinator?.start()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        self.window = window
    }

}

