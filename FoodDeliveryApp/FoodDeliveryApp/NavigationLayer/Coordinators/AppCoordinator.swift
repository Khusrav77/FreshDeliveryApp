//
//  AppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 2/9/24.
//

import UIKit

class AppCoordinator: Coordinator {

    override func start() {
        showOnbordingFlow()
    }
    override func finish() {
        print("AppCoordinator finish")
    }
}

// MARK: - Navigation mathods
private extension AppCoordinator {
    func showOnbordingFlow() {
        guard let navigationController = navigationController else { return }
        let onbordingCoordinator = OnbordingCoordinator(type: .onboarding, navigationController: navigationController, finishDelegate: self)
        addchildCoordinator(onbordingCoordinator )
        onbordingCoordinator.start()
    }
    func showMainFlow() {
        
    }
}

extension AppCoordinator: CoordinatorFinishDelegate {
    func coordinatorDidFinish(childCoordinator: CoordinatorProtocol) {
        removeChildCoordinator(childCoordinator)
        
        switch childCoordinator.type {
        case .app:
            return
        default:
            navigationController?.popToRootViewController(animated: false)
        }
    }
}
