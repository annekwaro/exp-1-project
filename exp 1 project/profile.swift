//
//  profile.swift
//  exp 1 project
//
//  Created by Anne Kwaro on 16/09/2023.
//
import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Profile")) {
                    NavigationLink(destination: PaymentView()) {
                        Label("Payment", systemImage: "creditcard.fill")
                    }
                    NavigationLink(destination: TransactionsView()) {
                        Label("Transactions", systemImage: "list.dash")
                    }
                    NavigationLink(destination: MyCardsView()) {
                        Label("My Cards", systemImage: "creditcard.fill")
                    }
                    NavigationLink(destination: PromotionsView()) {
                        Label("Promotions", systemImage: "gift.fill")
                    }
                    NavigationLink(destination: SavingsView()) {
                        Label("Savings", systemImage: "dollarsign.circle.fill")
                    }
                    NavigationLink(destination: SignOutView()) {
                        Label("Sign Out", systemImage: "arrow.right.circle.fill")
                    }
                }
                Section {
                    HStack {
                        Spacer()
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 100))
                            .foregroundColor(.blue)
                            .padding()
                        Spacer()
                    }
                }
            }
            .navigationTitle("Profile")
        }
    }
}

struct PaymentView: View {
    var body: some View {
        VStack {
            Image(systemName: "creditcard.fill")
                .font(.system(size: 50))
                .foregroundColor(.blue)
                .padding()
            Text("Payment Information")
                .font(.title)
        }
    }
}

struct TransactionsView: View {
    var body: some View {
        VStack {
            Image(systemName: "list.dash")
                .font(.system(size: 50))
                .foregroundColor(.blue)
                .padding()
            Text("Transaction History")
                .font(.title)
        }
    }
}

struct MyCardsView: View {
    var body: some View {
        VStack {
            Image(systemName: "creditcard.fill")
                .font(.system(size: 50))
                .foregroundColor(.blue)
                .padding()
            Text("My Cards")
                .font(.title)
        }
    }
}

struct PromotionsView: View {
    var body: some View {
        VStack {
            Image(systemName: "gift.fill")
                .font(.system(size: 50))
                .foregroundColor(.blue)
                .padding()
            Text("Promotions")
                .font(.title)
        }
    }
}

struct SavingsView: View {
    var body: some View {
        VStack {
            Image(systemName: "dollarsign.circle.fill")
                .font(.system(size: 50))
                .foregroundColor(.blue)
                .padding()
            Text("Savings")
                .font(.title)
        }
    }
}

struct SignOutView: View {
    var body: some View {
        VStack {
            Image(systemName: "arrow.right.circle.fill")
                .font(.system(size: 50))
                .foregroundColor(.blue)
                .padding()
            Text("Sign Out")
                .font(.title)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
