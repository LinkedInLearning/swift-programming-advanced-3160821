//
//  SettingsManager.swift
//  LiL Swift Programming Advanced
//
//  Created by LinkedIn Learning on 15.11.21.
//

import Foundation

class SettingsManager {
    static let shared = SettingsManager()
    
    var username: String? {
        get {
            UserDefaults.standard.string(forKey: "Username")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "Username")
        }
    }
    
    var getsNewsletter: Bool? {
        get {
            UserDefaults.standard.bool(forKey: "GetsNewsletter")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "GetsNewsletter")
        }
    }
}
