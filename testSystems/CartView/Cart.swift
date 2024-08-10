import SwiftUI

class Cart: ObservableObject {
    @Published var productItems: [Product] = []
    
    func add(product: Product) {
        print("Добавление продукта: \(product.name)")
        productItems.append(product)
    }
    
    func remove(product: Product) {
        print("Удаление продукта: \(product.name)")
        productItems.removeAll {$0.id == product.id}
    }
}
