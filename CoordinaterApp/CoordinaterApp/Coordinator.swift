//
//  Coordinator.swift
//  CoordinaterApp
//
//  Created by Phil Wright on 4/15/25.
//

import UIKit

// Coordinator protocol that all coordinators will conform to
protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

// AppCoordinator.swift
import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        // Start with the home screen
        showHomeScreen()
    }
    
    func showHomeScreen() {
        let homeVC = HomeViewController()
        homeVC.coordinator = self
        navigationController.pushViewController(homeVC, animated: false)
    }
    
    func showDetailScreen(with item: String) {
        let detailVC = DetailViewController()
        detailVC.coordinator = self
        detailVC.item = item
        navigationController.pushViewController(detailVC, animated: true)
    }
    
    func showSettingsScreen() {
        let settingsVC = SettingsViewController()
        settingsVC.coordinator = self
        navigationController.pushViewController(settingsVC, animated: true)
    }
    
    // Start a child coordinator for a more complex flow
    func startProfileFlow() {
        let profileCoordinator = ProfileCoordinator(navigationController: navigationController)
        childCoordinators.append(profileCoordinator)
        profileCoordinator.parentCoordinator = self
        profileCoordinator.start()
    }
    
    // Remove a child coordinator when its flow completes
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
