//
//  SettingsViewController.swift
//  LiL Swift Programming Advanced
//
//  Created by LinkedIn Learning on 15.11.21.
//

import UIKit

enum Section: Int {
    case AuthenticationSection
    case AboutSection
}

class SettingsViewController: UITableViewController {
    // ...
}

// MARK: - UITableViewDataSource

extension SettingsViewController {
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case Section.AuthenticationSection.rawValue:
            // FIXME: Return NSLocalizedString
            return "Authentication"
        case Section.AboutSection.rawValue:
            return NSLocalizedString("About", comment: "About")
        default:
            return nil
        }
    }
}

// MARK: - UITableViewDelegate

extension SettingsViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == Section.AuthenticationSection.rawValue {
            // Change user ...
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    private func changeUserAuthentication() {
        if SettingsManager.shared.isUserLoggedIn {
            // Log out user ...
        } else {
            // TODO: Display login view
        }
    }
}
