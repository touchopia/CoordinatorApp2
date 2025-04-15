//
//  DetailViewController.swift
//  CoordinaterApp
//
//  Created by Phil Wright on 4/15/25.
//

import UIKit

class DetailViewController: UIViewController {
    
    weak var coordinator: AppCoordinator?
    var item: String?
    
    private let itemLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        title = "Detail"
        view.backgroundColor = .systemBackground
    }
    
    private func setupUI() {
        itemLabel.text = "Item: \(item ?? "None")"
        itemLabel.textAlignment = .center
        
        view.addSubview(itemLabel)
        itemLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            itemLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            itemLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
