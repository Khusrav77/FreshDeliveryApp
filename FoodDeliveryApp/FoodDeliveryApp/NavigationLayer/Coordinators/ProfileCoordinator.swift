//
//  ProfileCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 2/10/24.
//

import UIKit


class ProfileCoordinator: Coordinator {
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .blue
        navigationController?.pushViewController(vc, animated: true)
        
    }
    override func finish() {
        print("AppCoordinator finish")
    }
}
