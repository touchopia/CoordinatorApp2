//
//  SettingsViewController.swift
//  CoordinaterApp
//
//  Created by Phil Wright on 4/15/25.
//

import UIKit

class SettingsViewController: UIViewController {
    weak var coordinator: AppCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        view.backgroundColor = .systemBackground
        
        let label = UILabel()
        label.text = "Settings Screen"
        label.textAlignment = .center
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
