//
//  ContactViewController.swift
//  Contacts
//
//  Created by Дмитрий Мирошников on 05.04.2022.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = contact.fullName
        emailLabel.text = contact.email
        phoneNumberLabel.text = contact.phone
    }
}
