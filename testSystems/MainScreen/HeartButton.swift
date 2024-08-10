
import SwiftUI

struct HeartButton: View {
    @State private var isLiked: Bool = false
    
    var body: some View {
        Button(action: {
            isLiked.toggle()
        }) {
            Image(isLiked ? "heart1" : "heart")
                .frame(width: 13, height: 13)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

