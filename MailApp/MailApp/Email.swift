//
//  Email.swift
//  MailApp
//
//  Created by Isabel Quijada on 06.10.24.
//

import SwiftUI

struct Email: Identifiable {
    let id = UUID()
    let subject: String
    let sender: String
    let body: String
    let date: Date
}
