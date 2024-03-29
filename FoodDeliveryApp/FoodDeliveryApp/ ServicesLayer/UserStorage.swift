//
//  UserStorage.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 2/24/24.
//

import UIKit

class UserStorage {
    static let shared = UserStorage()
    
    var passedOnboarding: Bool {
        get { UserDefaults.standard.bool(forKey: "passedOnboarding")}
        set { UserDefaults.standard.set(newValue, forKey: "passedOnboarding")}
    }
}
