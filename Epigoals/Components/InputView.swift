import SwiftUI

struct InputView: View {
    @Binding var text: String
    var placeholder: String
    var title: String;
    var secureField: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)
                .foregroundStyle(Color("Text"))
            
            if secureField {
                SecureField(placeholder, text: $text)
                    .padding(.bottom, 10)
                    .foregroundColor(Color("Text"))
                    .overlay(
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray)
                            .padding(.top, 35),
                        alignment: .bottom
                    )
            } else {
                TextField(placeholder, text: $text)
                    .foregroundStyle(Color("Text"))
                    .padding(.bottom, 10)
                    .overlay(
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray)
                            .padding(.top, 35),
                        alignment: .bottom
                    )
                
            }
        }
        .padding()
    }
}
