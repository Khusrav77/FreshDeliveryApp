//
//  HomeCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 2/10/24.
//

import UIKit


class HomeCoordinator: Coordinator {
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .red
        navigationController?.pushViewController(vc, animated: true)
        
    }
    override func finish() {
        print("AppCoordinator finish")
    }
}
