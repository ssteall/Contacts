//
//  ContactViewController.swift
//  Contacts
//
//  Created by Дмитрий Мирошников on 05.04.2022.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var personPhotoImage: UIImageView!
    @IBOutlet var professionNameLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = contact.fullName
        professionNameLabel.text = contact.profession
        emailLabel.text = contact.email
        phoneNumberLabel.text = contact.phone
        personPhotoImage.image = UIImage(named: contact.photo)
        personPhotoImage.layer.cornerRadius = personPhotoImage.bounds.height / 2
    }
}
