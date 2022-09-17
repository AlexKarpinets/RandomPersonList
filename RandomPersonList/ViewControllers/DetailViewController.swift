//
//  DetailViewController.swift
//  RandomPersonList
//
//  Created by Karpinets Alexander on 17.09.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullnameLabel.text = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }

}
