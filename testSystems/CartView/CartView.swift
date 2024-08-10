import SwiftUI

struct CartView: View {
    @EnvironmentObject var cart: Cart
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(cart.productItems) { product in
                    HStack {
                        Image(product.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                        
                        Text(product.name)
                            .font(.system(size: 16))
                        Spacer()
                        Button(action: {
                            cart.remove(product: product)
                        }) {
                            Text("Удалить")
                                .foregroundColor(.green)
                        }
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Корзина")
        }
    }
}

#Preview {
    CartView()
        .environmentObject(Cart())
}
