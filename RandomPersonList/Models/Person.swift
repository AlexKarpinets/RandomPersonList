//
//  Person.swift
//  RandomPersonList
//
//  Created by Karpinets Alexander on 17.09.2022.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var email: String
    var phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names
        let surnames = DataManager.shared.surnames
        let emails = DataManager.shared.emails
        let phones = DataManager.shared.phones
        
        for index in 0..<4 {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            persons.append(person)
        }
        return persons
    }
}

