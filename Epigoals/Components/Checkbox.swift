
import SwiftUI

struct Checkbox: View {
    @Binding var isChecked: Bool
    
    var label: String
    
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 6)
                    .stroke(lineWidth: 2)
                    .foregroundColor(isChecked ? Color.blue : Color.gray)
                    .frame(width: 24, height: 24)
                
                if isChecked {
                    RoundedRectangle(cornerRadius: 4)
                        .foregroundColor(.blue)
                        .frame(width: 18, height: 18)
                        .overlay(
                            Image(systemName: "checkmark")
                                .foregroundColor(Color("Text"))
                                .font(.system(size: 14, weight: .bold))
                        )
                }
            }
            .onTapGesture {
                isChecked.toggle()
            }
            Spacer()
            
            Text(label)
                .font(.system(size: 15))
                .foregroundColor(.primary)
        }
        .padding()
    }
}
