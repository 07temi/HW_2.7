//
//  DataManager.swift
//  HW_2.7
//
//  Created by Артем Черненко on 29.12.2021.
//

class DataManager {
    static let shared = DataManager()
    
    let names = [
    "John","Aaron","Tim","Ted",
    "Steve","Sharon","Nicola",
    "Allan","Bruce","Carl"
    ]
    
    let surnames = [
    "Smith","Dow","Isaacson",
    "Pennyworth","Jankin",
    "Butler","Black","Robertson",
    "Murphy","Williams"
    ]
    
    let emails = [
        "jjjj@mail.ru","aaaa@mail.ru",
        "eeee@mail.ru","hhhh@mail.ru",
        "wwww@mail.ru","mmmm@mail.ru",
        "xxxx@mail.ru","pppp@mail.ru",
        "ssss@mail.ru","llll@mail.ru"
    ]
    
    let phones = [
    "123456789","738945286","789577356",
    "289437641","702578248","287565345",
    "128769045","419604671","198706589",
    "339060433"
    ]
    
    private init() {}
}
