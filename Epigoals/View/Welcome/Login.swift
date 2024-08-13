import SwiftUI

struct LoginView: View {
    @State var email: String
    @State var password: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text("Se connecter")
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
                text: $password,
                placeholder: "Entrez votre mot de passe",
                title: "Mot de passe",
                secureField: true
            )
            
            HStack {
                Spacer()
                Button(action:  {
                    print("Mot de passe oublié")
                }) {
                    Text("Mot de passe oublié ?")
                        .foregroundColor(Color.blue)
                }
            }
            .padding(.bottom, 20)
            
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
            .padding(.top, 10)
        }
        .padding()
    }
}

#Preview {
    LoginView(email: "", password: "")
        .preferredColorScheme(.light)
}
