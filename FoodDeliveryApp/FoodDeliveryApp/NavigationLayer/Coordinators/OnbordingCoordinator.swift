//
//  OnbordingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 2/9/24.
//

import UIKit


class OnbordingCoordinator: Coordinator {
    override func start() {
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    override func finish() {
        print("AppCoordinator finish")
    }
}

