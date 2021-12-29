//
//  PersonsAdditionalListViewController.swift
//  HW_2.7
//
//  Created by Артем Черненко on 29.12.2021.
//

import UIKit

class PersonsAdditionalListViewController: UITableViewController {

    private var persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(persons[section].name) \(persons[section].surname)"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 2
// Не смог понять как из нашей структуры вычислять необходимое значение, или не о том думал)
        }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.text = ("\(person.phone)")
            // ?? Картинки
            cell.contentConfiguration = content
        } else {
            content.text = ("\(person.email)")
            cell.contentConfiguration = content
        }
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
