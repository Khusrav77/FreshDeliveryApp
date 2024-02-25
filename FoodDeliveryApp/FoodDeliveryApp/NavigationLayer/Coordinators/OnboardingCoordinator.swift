//
//  OnbordingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 2/9/24.
//

import UIKit

// MARK: - OnboardingCoordinator
class OnboardingCoordinator: Coordinator {
    //MARK: - Properties
    private let factory = SceneFactory.self
    
    //MARK: - Methods
    override func start() {
       showOnboarding()
    }
    override func finish() {
        print("AppCoordinator finish")
        finishDelegate?.coordinatorDidFinish(childCoordinator: self)
    }
}
//MARK: - Navigation
private extension OnboardingCoordinator {
    func showOnboarding() {
       let viewController = factory.makeOnboardingScene(coordinator: self)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
