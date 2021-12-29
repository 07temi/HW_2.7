//
//  PersonalDetailViewController.swift
//  HW_2.7
//
//  Created by Артем Черненко on 29.12.2021.
//

import UIKit

class PersonalDetailViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var recordPerson: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Почему то после указания следующей строки происходит изменение кнопки назад (< Persons List ----  < Back)
        // Не нашел почему. Типа тронул одно свойство из Хэдера то и все остальные описывай?
        navigationItem.title = "\(recordPerson.name) \(recordPerson.surname)"
        phoneLabel.text = "Phone: \(recordPerson.phone)"
        emailLabel.text = "Email: \(recordPerson.email)"
    }

}
