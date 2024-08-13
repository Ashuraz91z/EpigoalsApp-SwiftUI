import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: LoginView(email: "", password: "")) {
                    Text("Se connecter")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                }
            }
            .navigationBarTitle("Accueil", displayMode: .inline)
        }
    }
}

#Preview {
    HomeView()
}
