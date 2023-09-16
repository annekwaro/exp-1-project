//
//  secondpage.swift
//  exp 1 project

//  Created by Anne Kwaro on 15/09/2023.
import SwiftUI

struct Transaction: Identifiable {
    var id: UUID = UUID()
    var amount: String
    var type: String
    var methode: String
    var transactionDate: String
    var transactionIcon: String
}

var transactions = [
    Transaction(amount: "100$", type: "Food", methode: "In Cash", transactionDate: "10 jan 2022", transactionIcon:"square.and.arrow.up"),
    Transaction(amount: "200$", type: "Clothes", methode: "In Cash", transactionDate: "10 jan 2024", transactionIcon:"square.and.arrow.down.fill"),
    Transaction(amount: "100$", type: "Transport", methode: "In Cash", transactionDate: "10 jan 2022",transactionIcon: "car.rear.fill"),
    Transaction(amount: "200$", type: "Charges", methode: "In Cash", transactionDate: "10 jan 2024", transactionIcon:"rectangle.portrait.and.arrow.right.fill"),
    
    Transaction(amount: "200$", type: "Rent", methode: "In Cash", transactionDate: "10 jan 2024", transactionIcon:"rectangle.portrait.and.arrow.right.fill"),
]

struct SecondPage: View {
    //here I learnt how to use state
    @State private var selectedTab = 0
    var body: some View {
    
        TabView(selection: $selectedTab) {
                    // First Tab (Transactions)
                    NavigationView {
                        VStack {
                            Text("Total Balance")
                                .font(Font.custom("Inter", size: 16))
                                .foregroundColor(Color(red: 0.40, green: 0.40, blue: 0.40))
                            Text("$ 2,548.00")
                                .font(Font.custom("Inter", size: 30).weight(.bold))
                                .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))

                            RoundedRectangle(cornerRadius: 40)
                                .foregroundColor(Color(red: 0.17, green: 0.28, blue: 0.99))
                                .frame(width: 300, height: 48)
                                .overlay(
                                    VStack(spacing: 20) {
                                        Text("Transactions")
                                            .font(
                                                Font.custom("Inter", size: 14)
                                                    .weight(.semibold)
                                            )
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(.white)
                                    }
                                )

                            List(transactions) { transaction in
                                NavigationLink(destination: TransactionDetailView(transaction: transaction)) {
                                    ListView(amount: transaction.amount, method: transaction.methode, type: transaction.type, transactionDate: transaction.transactionDate, transactionIcon: transaction.transactionIcon)
                                }
                            }
                        }
                        .navigationBarTitle("Expenditure")
                        .navigationBarTitleDisplayMode(.inline)
                    }
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Transactions")
                    }
                    .tag(0)

                    // Second Tab (Some Other Tab)
                    NavigationView {
                        
                        VStack {
                            ZStack() {
                                Group {
                                    HStack(spacing: 0) {
                                        ZStack() { }
                                            .frame(width: 14, height: 18.29)
                                    }
                                    .padding(EdgeInsets(top: 2.86, leading: 5, bottom: 2.86, trailing: 5))
                                    .frame(width: 24, height: 24)
                                    .offset(x: -135, y: -356)
                                    .rotationEffect(.degrees(90))
                                    Text("My Spending")
                                        .font(Font.custom("Inter", size: 18).weight(.bold))
                                        .lineSpacing(20)
                                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                                        .offset(x: -8, y: -380)
                                    ZStack() {
                                        
                                    }
                                    .frame(width: 24, height: 24)
                                    .offset(x: 144, y: -380)
                                    HStack(spacing: 6) {
                                        HStack(spacing: 10) {
                                            Text("Daily")
                                                .font(Font.custom("Inter", size: 16))
                                                .tracking(0.10)
                                                .lineSpacing(24)
                                                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                        }
                                        .padding(EdgeInsets(top: 8, leading: 29, bottom: 8, trailing: 29))
                                        .background(Color(red: 0.95, green: 0.96, blue: 0.97))

                                        .cornerRadius(15)
                                        HStack(spacing: 10) {
                                            Text("Weekly")
                                                .font(Font.custom("Inter", size: 16))
                                                .tracking(0.10)
                                                .lineSpacing(24)
                                                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                        }
                                        .padding(EdgeInsets(top: 8, leading: 19, bottom: 8, trailing: 19))
                                        .background(Color(red: 0.99, green: 0.88, blue: 0.17))

                                        .cornerRadius(15)
                                        HStack(spacing: 10) {
                                            Text("Monthly")
                                                .font(Font.custom("Inter", size: 16))
                                                .tracking(0.10)
                                                .lineSpacing(24)
                                                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                        }
                                        .padding(
                                            EdgeInsets(top: 8, leading: 15.50, bottom: 8, trailing: 15.50)
                                        )
                                        .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                                        .cornerRadius(15)
                                    }
                                    .padding(EdgeInsets(top: 5, leading: 7, bottom: 5, trailing: 7))
                                    .background(Color(red: 0.17, green: 0.28, blue: 0.99))
                                    .cornerRadius(15)
                                    .offset(x: -5, y: -304)
                                    HStack(spacing: 77) {
                                        Text("Total Income")
                                            .font(Font.custom("Inter", size: 14).weight(.medium))
                                            .tracking(0.10)
                                            .lineSpacing(24)
                                            .foregroundColor(Color(red: 0.56, green: 0.86, blue: 0.17))
                                        Text("Total Expense")
                                            .font(Font.custom("Inter", size: 14).weight(.medium))
                                            .tracking(0.10)
                                            .lineSpacing(24)
                                            .foregroundColor(Color(red: 0.92, green: 0.14, blue: 0.14))
                                    }
                                    .offset(x: -3.50, y: -254)
                                    HStack(spacing: 96) {
                                        Text("$12,234")
                                            .font(Font.custom("Inter", size: 20).weight(.medium))
                                            .tracking(0.10)
                                            .lineSpacing(24)
                                            .foregroundColor(Color(red: 0.56, green: 0.86, blue: 0.17))
                                        Text("$15,394")
                                            .font(Font.custom("Inter", size: 20).weight(.medium))
                                            .tracking(0.10)
                                            .lineSpacing(24)
                                            .foregroundColor(Color(red: 0.92, green: 0.14, blue: 0.14))
                                    }
                                    .offset(x: 0.50, y: -230)
                                    Text("View All")
                                        .font(Font.custom("Inter", size: 16).weight(.semibold))
                                        .tracking(0.10)
                                        .lineSpacing(19.20)
                                        .foregroundColor(Color(red: 0.34, green: 0.34, blue: 0.34))
                                        .offset(x: 131, y: -193.50)
                                    VStack(alignment: .leading, spacing: 10) {
                                        ZStack() {
                                            Text("73% of your expenses is ok")
                                                .font(Font.custom("Inter", size: 16).weight(.medium))
                                                .tracking(0.10)
                                                .lineSpacing(24)
                                                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                                .offset(x: 31, y: 0.50)
                                            Ellipse()
                                                .foregroundColor(.clear)
                                                .frame(width: 55, height: 55)
                                                .background(Color(red: 0.17, green: 0.28, blue: 0.99))
                                                .offset(x: -111.50, y: 0)
                                            
                                            ZStack() {
                                                
                                            }
                                            .frame(width: 24, height: 24)
                                            .offset(x: -111, y: -1.50)
                                        }
                                        .frame(width: 278, height: 55)
                                    }
                                    .padding(EdgeInsets(top: 18, leading: 16, bottom: 18, trailing: 16))
                                    .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                                    .cornerRadius(15)
                                    .offset(x: -5, y: 243.50)
                                    HStack(spacing: 70) {
                                        ZStack() {
                                            
                                        }
                                        .frame(width: 34.75, height: 36)
                                        ZStack() {
                                            
                                        }
                                        .frame(width: 34, height: 34)
                                        ZStack() {
                                            
                                        }
                                        .frame(width: 36, height: 36)
                                        ZStack() {
                                            
                                        }
                                        .frame(width: 34.75, height: 36)
                                    }
                                    .frame(width: 413, height: 80)
                                    .background(.white)
                                    .offset(x: -0.50, y: 382)
                                    .shadow(
                                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.06), radius: 25
                                    )
                                }
                            }
                            .frame(width: 390, height: 844)
                            .background(.white);
                        }
                        
                    }
                    
                    //the end of this part
                    .tabItem {
                        Image(systemName: "chart.bar.fill")
                        Text("Other")
                    }
                    .tag(1)

                    // Third Tab (Profile)
                    NavigationView {
                        
                        Text("Profile View")
                            .navigationBarTitle("Profile")
                    }
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                    .tag(2)

                    // Fourth Tab (Settings)
                    NavigationView {
                        Text("Settings View")
                            .navigationBarTitle("Settings")
                    }
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                    .tag(3)
                }
            }
}
//end of the bottom navigation

struct ListView: View {
    var amount: String
    var method: String
    var type: String
    var transactionDate: String
    var transactionIcon: String

    var body: some View {
 
        
        ZStack() {
            
        
            VStack(alignment: .trailing, spacing: 6) {
                Text(amount)
                    .font(Font.custom("Inter", size: 16).weight(.semibold))
                    .lineSpacing(20)
                    .foregroundColor(Color(red: 0.10, green: 0.13, blue: 0.17))
                Text(method)
                    .font(Font.custom("Inter", size: 12).weight(.medium))
                    .lineSpacing(20)
                    .foregroundColor(Color(red: 0.29, green: 0.33, blue: 0.41))
            }
            .offset(x: 93.74, y: 0.50)

            VStack(alignment: .leading, spacing: 6) {
                Text(type)
                    .font(Font.custom("Inter", size: 16).weight(.semibold))
                    .lineSpacing(20)
                    .foregroundColor(.black)
                    .cornerRadius(18)
                Text(transactionDate)
                    .font(Font.custom("Inter", size: 12))
                    .lineSpacing(24)
                    .foregroundColor(Color(red: 0.10, green: 0.13, blue: 0.17))
            }
            .offset(x: -47, y: 0.50)
//Rectangle for each list
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 65, height: 65)
                .background(Color(red: 0.99, green: 0.88, blue: 0.17))
                .cornerRadius(18)
                .offset(x: -124.50, y: 0)
        }
        .frame(width: 327, height: 79)
        .background(.white)
        .cornerRadius(20)
        .overlay(
            ZStack(alignment:.leading  ){RoundedRectangle(cornerRadius: 20)
                    .inset(by: 0.50)
                    .stroke(Color(red: 0.80, green: 0.84, blue: 0.88), lineWidth: 0.50)
                    
                Image(systemName: transactionIcon).foregroundColor(.blue).padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))

                
            }
                )
    }
}

struct TransactionDetailView: View {
    var transaction: Transaction
    
    var body: some View {
        VStack {
            Text("Transaction Details")
                .font(Font.custom("Inter", size: 20))
                .padding()
            Text("Amount: \(transaction.amount)")
                .font(Font.custom("Inter", size: 16))
                .padding()
            Text("Type: \(transaction.type)")
                .font(Font.custom("Inter", size: 16))
                .padding()
            Text("Method: \(transaction.methode)")
                .font(Font.custom("Inter", size: 16))
                .padding()
            Text("Date: \(transaction.transactionDate)")
                .font(Font.custom("Inter", size: 16))
                .padding()
            Spacer()
        }
        .navigationBarTitle("Transaction Detail")
        
        
    }
    
    
}






struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}

