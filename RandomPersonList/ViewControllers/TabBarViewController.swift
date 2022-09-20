//
//  TabBarViewController.swift
//  RandomPersonList
//
//  Created by Karpinets Alexander on 18.09.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    let persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVC(with: persons )
    }
    
    private func setupVC(with persons: [Person]) {
        guard let personVC = viewControllers?.first as? PersonListTableViewController else { return }
        guard let contactVC = viewControllers?.last as? ContactsTableViewController else { return }
        
        personVC.persons = persons
        contactVC.persons = persons
    }
}
