//
//  SettingsManager.swift
//  LiL Swift Programming Advanced
//
//  Created by LinkedIn Learning on 15.11.21.
//

import Foundation

@propertyWrapper
struct UserDefaultsStorage<Value> {
    private let key: String
    
    var wrappedValue: Value? {
        get {
            UserDefaults.standard.object(forKey: key) as? Value? ?? nil
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
    
    init(key: String) {
        self.key = key
    }
}

class SettingsManager {
    static let shared = SettingsManager()
    
    @UserDefaultsStorage(key: "Username") var username: String?
    
    @UserDefaultsStorage(key: "GetsNewsletter") var getsNewsletter: Bool?
}
