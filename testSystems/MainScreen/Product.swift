import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: String
    let image: String
    let rating: String
    let starImage: String
}
