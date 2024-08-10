import SwiftUI

struct SelectionButton: View {
    @Binding var isSelected: Bool
    var body: some View {
        HStack {
            Button(action: {
                isSelected = true
            }) {
                Text("Шт")
                    .font(.system(size: 15))
                    .padding(.vertical, 4)
                    .padding(.horizontal, 25)
                    .background(isSelected ? Color.white : Color.clear)
                    .foregroundColor(isSelected ? .black : .gray)
                    .cornerRadius(8)
                    .frame(height: 26)
            }
            Button(action: {
                isSelected = false
            }) {
                Text("КГ")
                    .font(.system(size: 15))
                    .padding(.vertical, 4)
                    .padding(.horizontal, 25)
                    .background(!isSelected ? Color.white : Color.clear)
                    .foregroundColor(!isSelected ? .black : .gray)
                    .cornerRadius(8)
                    .frame(height: 26)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(4)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
}

#Preview {
    SelectionButton(isSelected: .constant(false))
}
