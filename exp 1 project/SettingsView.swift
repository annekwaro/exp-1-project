//
//  SettingsView.swift
//  exp 1 project
//
//  Created by Anne Kwaro on 16/09/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("General")) {
                    NavigationLink(destination: NotificationsSettingsView()) {
                        Text("Notifications")
                    }
                    NavigationLink(destination: PrivacySettingsView()) {
                        Text("Privacy")
                    }
                    NavigationLink(destination: AccountSettingsView()) {
                        Text("Account")
                    }
                }
                
                Section(header: Text("Appearance")) {
                    NavigationLink(destination: ThemeSettingsView()) {
                        Text("Theme")
                    }
                    NavigationLink(destination: FontSettingsView()) {
                        Text("Font")
                    }
                }
                
                Section(header: Text("About")) {
                    NavigationLink(destination: AboutView()) {
                        Text("About Us")
                    }
                    NavigationLink(destination: FeedbackView()) {
                        Text("Send Feedback")
                    }
                }
                
                Section(header: Text("")) {
                    Button(action: {
                        // Perform sign out action here
                    }) {
                        Text("Sign Out")
                            .foregroundColor(.red)
                    }
                }
            }
            .navigationTitle("Settings")
            
        }
    }
}

struct NotificationsSettingsView: View {
    var body: some View {
        Text("Notifications Settings")
            .navigationBarTitle("Notifications")
    }
}

struct PrivacySettingsView: View {
    var body: some View {
        Text("Privacy Settings")
            .navigationBarTitle("Privacy")
    }
}

struct AccountSettingsView: View {
    var body: some View {
        Text("Account Settings")
            .navigationBarTitle("Account")
    }
}

struct ThemeSettingsView: View {
    var body: some View {
        Text("Theme Settings")
            .navigationBarTitle("Theme")
    }
}

struct FontSettingsView: View {
    var body: some View {
        Text("Font Settings")
            .navigationBarTitle("Font")
    }
}

struct AboutView: View {
    var body: some View {
        Text("About Us")
            .navigationBarTitle("About Us")
    }
}

struct FeedbackView: View {
    var body: some View {
        Text("Send Feedback")
            .navigationBarTitle("Send Feedback")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

