//
//  ViewController.swift
//  CoordinaterApp
//
//  Created by Phil Wright on 4/15/25.
//

import UIKit

class HomeViewController: UIViewController {
    weak var coordinator: AppCoordinator?
    
    private let detailButton = UIButton(type: .system)
    private let settingsButton = UIButton(type: .system)
    private let profileButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        title = "Home"
        view.backgroundColor = .systemBackground
    }
    
    private func setupUI() {
        // Detail button
        detailButton.setTitle("Show Detail", for: .normal)
        detailButton.addTarget(self, action: #selector(detailButtonTapped), for: .touchUpInside)
        
        // Settings button
        settingsButton.setTitle("Settings", for: .normal)
        settingsButton.addTarget(self, action: #selector(settingsButtonTapped), for: .touchUpInside)
        
        // Profile button
        profileButton.setTitle("Profile", for: .normal)
        profileButton.addTarget(self, action: #selector(profileButtonTapped), for: .touchUpInside)
        
        // Add to view
        view.addSubview(detailButton)
        view.addSubview(settingsButton)
        view.addSubview(profileButton)
        
        // Layout constraints
        detailButton.translatesAutoresizingMaskIntoConstraints = false
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        profileButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            detailButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            detailButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            
            settingsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            settingsButton.topAnchor.constraint(equalTo: detailButton.bottomAnchor, constant: 20),
            
            profileButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileButton.topAnchor.constraint(equalTo: settingsButton.bottomAnchor, constant: 20)
        ])
    }
    
    @objc private func detailButtonTapped() {
        coordinator?.showDetailScreen(with: "Example Item")
    }
    
    @objc private func settingsButtonTapped() {
        coordinator?.showSettingsScreen()
    }
    
    @objc private func profileButtonTapped() {
        coordinator?.startProfileFlow()
    }
}
