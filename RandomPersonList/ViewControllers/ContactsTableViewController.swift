//
//  ContactsTableViewController.swift
//  RandomPersonList
//
//  Created by Karpinets Alexander on 17.09.2022.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var person = Person.getPerson()
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        person[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = person[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        content.text = person.phone
        content.secondaryText = person.email
        cell.contentConfiguration = content
        return cell
    }
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}
