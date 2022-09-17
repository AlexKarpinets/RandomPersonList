//
//  DataManager.swift
//  RandomPersonList
//
//  Created by Karpinets Alexander on 17.09.2022.
//

import Foundation

class DataManager {
    
   static let shared =  DataManager()
    
    let names = ["Alexander", "Igor", "Anna", "Lubov"]
    let surnames = ["Kvebek", "Lasgo", "Petterson", "Vlasko"]
    let emails = ["bk@rambler.ru", "aov@google.com", "123@yahhoo.com", "gena@inbix.ru"]
    let phones = ["+79991201243", "+79062410000", "+79216743321", "+79808903020"]
    
    private init () {}
}
