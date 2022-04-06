//
//  Contact.swift
//  Contacts
//
//  Created by Дмитрий Мирошников on 04.04.2022.
//

struct Person {
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    let photo: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getContacts() -> [Person] {
        let data = DataManager()
        var persons: [Person] = []
        
        let firstNames = data.firstNames.shuffled()
        let lastNames = data.lastNames.shuffled()
        let emails = data.emails.shuffled()
        let phones = data.phones.shuffled()
        let photos = data.photos.shuffled()
        
        for index in 0...9 {
            persons.append(Person(firstName: firstNames[index],
                                  lastName: lastNames[index],
                                  phone: phones[index],
                                  email: emails[index],
                                  photo: photos[index]))
        }
    
        return persons
    }
}
