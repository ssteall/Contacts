//
//  ContactListViewController.swift
//  Contacts
//
//  Created by Дмитрий Мирошников on 04.04.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var contacts: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contacts[indexPath.row]
        content.text = contact.fullName
        content.image = UIImage(named: contact.photo)
        content.imageProperties.maximumSize.height = 50
        content.imageProperties.cornerRadius = 25
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutContactVC = segue.destination as? ContactViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        aboutContactVC.contact = contacts[indexPath.row]
    }
    

}
