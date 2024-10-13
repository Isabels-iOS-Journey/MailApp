//
//  ContentView.swift
//  MailApp
//
//  Created by Isabel Quijada on 06.10.24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = EmailViewModel()
    
    var body: some View {
        NavigationSplitView {
            List(viewModel.emails) { email in
                Button(action: {
                    viewModel.selectEmail(email: email)
                }) {
                    VStack(alignment: .leading) {
                        Text(email.subject)
                            .font(.headline)
                        Text(email.sender)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Emails")
        } detail: {
            if let selectedEmail = viewModel.selectedEmail {
                EmailDetailView(email: selectedEmail)
            } else {
                Text("Select an email to view the details")
                    .foregroundColor(.gray)
                    .font(.title)
            }
        }
    }
}

struct EmailDetailView: View {
    let email: Email

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(email.subject)
                .font(.largeTitle)
                .bold()
            Text("From: \(email.sender)")
                .font(.headline)
                .foregroundColor(.gray)
            Text(email.body)
                .font(.body)
            Spacer()
        }
        .padding()
        .navigationTitle(email.subject)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
