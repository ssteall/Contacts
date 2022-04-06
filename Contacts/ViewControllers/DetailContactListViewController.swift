//
//  DetailContactListViewController.swift
//  Contacts
//
//  Created by Дмитрий Мирошников on 04.04.2022.
//

import UIKit

class DetailContactListViewController: UITableViewController {

    var contacts: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailContactID", for: indexPath)
        let contact = contacts[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contact.email
            content.image = UIImage(systemName: "envelope")
        } else {
            content.text = contact.phone
            content.image = UIImage(systemName: "phone")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(contacts[section].fullName) - \(contacts[section].profession)"
    }
    
}
