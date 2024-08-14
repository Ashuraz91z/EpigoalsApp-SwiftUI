import SwiftUI

struct RegisterView: View {
    @State var email: String
    @State var password: String
    @State var confirmPassword: String
    @State var username: String
    @State private var isChecked = false
    
    var body: some View {
        VStack(spacing: 5) {
            Text("S'inscrire")
                .font(.title)
                .foregroundStyle(Color("Text"))
                .padding(.bottom, 30)
            
            InputView(
                text: $email,
                placeholder: "Entrez votre email ",
                title: "Email",
                secureField: false
            )
            InputView(
                text: $username,
                placeholder: "Entrez un nom d'utilisateur",
                title: "Utilisateur",
                secureField: false
            )
            
            InputView(
                text: $password,
                placeholder: "Entrez votre mot de passe",
                title: "Mot de passe",
                secureField: true
            )
            InputView(
                text: $confirmPassword,
                placeholder: "Entrez à nouveau votre mot de passe",
                title: "Confirmer mot de passe",
                secureField: true
            )
            Checkbox(isChecked: $isChecked, label: "J'accepte les conditions d'utilisations")
            
            .padding(.bottom, 20)
            
            Button(action:  {
                print("Email : ", email)
                print("Password : ", password)
            }) {
                Text("S'inscrire")
                    .foregroundColor(Color("Text"))
                    .padding()
                    .background(Color("Accent"))
                    .cornerRadius(8)
                    
            }
            .padding(.top, 10)
        }
        .padding()
    }
}

#Preview {
    RegisterView(email: "", password: "",confirmPassword: "", username: "")
        .preferredColorScheme(.dark)
}
