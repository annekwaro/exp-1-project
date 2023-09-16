//
//  signuppage.swift
//  exp 1 project
//
//  Created by Anne Kwaro on 16/09/2023.
//

import SwiftUI

struct signuppage: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            // My image is here
            Image("teaching financial literacy for children")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250) // Adjust the size as needed

            VStack(spacing: 12) {
                Text("Easy Online Payment")
                    .font(Font.custom("Inter", size: 24).weight(.semibold))
                    .foregroundColor(Color(.black))
                Text("Make your payment experience better today.")
                    .font(Font.custom("Inter", size: 14))
                    .foregroundColor(Color(.gray))
            }
            .frame(maxWidth: .infinity)
            
            VStack(alignment: .center, spacing: 12) {
                Button(action: {
                    // Action for Login button
                }) {
                    Text("Login")
                        .font(Font.custom("Inter", size: 16).weight(.semibold))
                        .frame(width: 200, height: 40)
                        .background(Color(red: 0.17, green: 0.28, blue: 0.99))
                        .foregroundColor(Color(.white))
                        .cornerRadius(20)
                }
                
                Button(action: {
                    // Action for Sign Up button
                }) {
                    Text("Sign Up")
                        .font(Font.custom("Inter", size: 16).weight(.semibold))
                        .frame(width: 200, height: 40)
                        .background(Color(.white))
                        .foregroundColor(Color(.black))
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(.black), lineWidth: 0.5)
                        )
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color(.white))
    }
}

struct signuppage_Previews: PreviewProvider {
    static var previews: some View {
        signuppage()
    }
}
