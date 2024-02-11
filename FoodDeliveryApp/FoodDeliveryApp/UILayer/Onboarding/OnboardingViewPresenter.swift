//
//  OnboardingViewPresenter.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 2/11/24.
//

import UIKit

protocol OnboadingViewOutput: AnyObject {
    func onboardingFinish()
}

class OnboardingViewPresenter: OnboadingViewOutput {
    
    // MARK: - Properties
    weak var coordinator: OnboardingCoordinator!
    init(coordinator: OnboardingCoordinator!) {
        self.coordinator = coordinator
    }
    
    func onboardingFinish() {
        coordinator?.finish()
    }
}
