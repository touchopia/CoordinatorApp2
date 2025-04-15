//
//  Untitled.swift
//  CoordinaterApp
//
//  Created by Phil Wright on 4/15/25.
//

import UIKit

class ProfileEditViewController: UIViewController {
    weak var coordinator: ProfileCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Edit Profile"
        view.backgroundColor = .systemBackground
        
        let label = UILabel()
        label.text = "Edit Profile Screen"
        label.textAlignment = .center
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
