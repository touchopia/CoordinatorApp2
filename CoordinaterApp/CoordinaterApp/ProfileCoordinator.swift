//
//  ProfileCoordinator.swift
//  CoordinaterApp
//
//  Created by Phil Wright on 4/15/25.
//

import UIKit

class ProfileCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    weak var parentCoordinator: AppCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let profileVC = ProfileViewController()
        profileVC.coordinator = self
        navigationController.pushViewController(profileVC, animated: true)
    }
    
    func showProfileEdit() {
        let editVC = ProfileEditViewController()
        editVC.coordinator = self
        navigationController.pushViewController(editVC, animated: true)
    }
    
    func didFinishProfileFlow() {
        parentCoordinator?.childDidFinish(self)
    }
}
