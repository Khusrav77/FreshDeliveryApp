//
//  OrderCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 2/10/24.
//

import UIKit


class OrderCoordinator: Coordinator {
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .yellow
        navigationController?.pushViewController(vc, animated: true)
        
    }
    override func finish() {
        print("AppCoordinator finish")
    }
}