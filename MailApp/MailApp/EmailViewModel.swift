//
//  EmailViewModel.swift
//  MailApp
//
//  Created by Isabel Quijada on 06.10.24.
//

import SwiftUI

class EmailViewModel: ObservableObject {
    @Published var emails: [Email] = []
    @Published var selectedEmail: Email?

    init() {
        emails = [
            Email(subject: "SwiftUI Project", sender: "Alice", body: "Don't forget to finish the SwiftUI project!", date: Date()),
            Email(subject: "Lunch Plans", sender: "Bob", body: "Are you free for lunch today?", date: Date()),
            Email(subject: "Meeting Reminder", sender: "Carol", body: "Our meeting is scheduled for tomorrow at 3 PM.", date: Date())
        ]
    }
    
    func selectEmail(email: Email) {
        selectedEmail = email
    }
}
