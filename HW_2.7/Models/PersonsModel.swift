//
//  PersonsModel.swift
//  HW_2.7
//
//  Created by Артем Черненко on 29.12.2021.
//
struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    static func getPerson() -> [Person] {
        var Persons: [Person] = []
        
        for item in 0...9 {
            Persons.append(Person(name: DataManager.shared.names[item],
                                  surname: DataManager.shared.surnames[item],
                                  email: DataManager.shared.emails[item],
                                  phone: DataManager.shared.phones[item]))
            
        }
        return Persons
    }
}
