import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: LoginView(email: "", password: "")) {
                    Text("Se connecter")
                        .font(.headline)
                        .foregroundColor(Color("Text"))
                        .frame(width: 150, height: 50)
                        .background(Color("Accent"))
                        .cornerRadius(10)
                }
                NavigationLink(destination: RegisterView(email: "", password: "", confirmPassword: "", username: "")) {
                    Text("S'inscrire")
                        .font(.headline)
                        .foregroundColor(Color("Text"))
                        .frame(width: 150, height: 50)
                        .background(Color("Accent"))
                        .cornerRadius(10)
                }
            }
            .navigationBarTitle("Accueil", displayMode: .inline)
        }
    }
}

#Preview {
    HomeView()
}
