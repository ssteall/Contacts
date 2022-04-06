//
//  TabBarController.swift
//  Contacts
//
//  Created by Дмитрий Мирошников on 06.04.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    var contacts = Person.getContacts()

    override func viewDidLoad() {
        super.viewDidLoad()
        transferDataToVC()
    }
    
    private func transferDataToVC() {
        let viewControllers = self.viewControllers
        let contactListVC = viewControllers?.first as! ContactListViewController
        let detailContactListVC = viewControllers?.last as! DetailContactListViewController
        
        contactListVC.contacts = contacts
        detailContactListVC.contacts = contacts
    }
}
