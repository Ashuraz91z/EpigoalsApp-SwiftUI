//
//  Login.swift
//  Epigoals
//
//  Created by Lucas Fernandes on 11/08/2024.
//

import SwiftUI

struct LoginView: View {
    @State var email: String
    @State var password: String
    var body: some View {
        VStack {
            Text("Se connecter")
                .font(.title)
                .foregroundStyle(Color("Text"))
            InputView(text: $email,
                      placeholder: "Entrez votre email ",
                      title: "Email",
                      secureField: false)
            InputView(
                text: $password,
                placeholder: "Entrez votre mot de passe",
                title: "Mot de passe",
                secureField: true)
            
            Button(action:  {
                print("Email : ", email)
                print("Password : ", password)
            }) {
                Text("Se connecter")
                    .foregroundColor(Color("Text"))
                    .padding()
                    .background(Color("Accent"))
                    .cornerRadius(8)
            }

        }
    }
}

#Preview {
    LoginView(email: "", password: "")
        .preferredColorScheme(.light)
}
