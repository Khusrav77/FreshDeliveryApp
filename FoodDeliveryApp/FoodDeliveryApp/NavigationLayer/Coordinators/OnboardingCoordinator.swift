//
//  OnbordingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 2/9/24.
//

import UIKit


class OnboardingCoordinator: Coordinator {
    override func start() {
       showOnboarding()
    }
    override func finish() {
        print("AppCoordinator finish")
    }
}

private extension OnboardingCoordinator {
    func showOnboarding() {
        var pages = [OnboardingSwitchViewController]()
        
        let firstVC = OnboardingSwitchViewController()
            firstVC.imageToShow = UIImage(resource: .chickenLeg1)
            firstVC.titleText = "Delicious Food"
            firstVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
            firstVC.buttonText = "Next"
        
        let secondVC = OnboardingSwitchViewController()
            secondVC.imageToShow = UIImage(resource: .shipped1)
            secondVC.titleText = "Fast Shipping"
            secondVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla."
            secondVC.buttonText = "Next"
        
        let thirdVC = OnboardingSwitchViewController()
            thirdVC.imageToShow = UIImage(resource: .medal1)
            thirdVC.titleText = "Certificate Food"
            thirdVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies mauris a id."
            thirdVC.buttonText = "Next"
        
        let fourthVC = OnboardingSwitchViewController()
            fourthVC.imageToShow = UIImage(resource: .creditCard1)
            fourthVC.titleText = "Payment Online"
            fourthVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui ultricies sit massa."
            fourthVC.buttonText = "Cool!"
        
        pages.append(firstVC)
        pages.append(secondVC)
        pages.append(thirdVC)
        pages.append(fourthVC)
        
        let presenter = OnboardingViewPresenter(coordinator: self)
        let viewController = OnboardingViewController(pages: pages, viewOutput: presenter)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
