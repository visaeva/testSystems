import SwiftUI

struct MainScreen: View {
    @StateObject private var viewModel = MainScreenViewModel()
    @State private var isSelected: Bool = false
    @State private var showCartView: Bool = false
    @EnvironmentObject var cart: Cart
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Image("chips")
                        .padding(.top, 10)
                        .padding(.leading, 10)
                    Divider()
                        .padding(.bottom, 5)
                    LazyVGrid(columns: viewModel.columns, spacing: 15) {
                        ForEach(viewModel.products) { product in
                            VStack {
                                ZStack {
                                    Rectangle()
                                        .fill(Color.white)
                                        .cornerRadius(10)
                                        .shadow(radius: 2)
                                    
                                    VStack {
                                        Image(product.image)
                                            .resizable()
                                            .scaledToFit()
                                        
                                        HStack(spacing: 5) {
                                            Image(product.starImage)
                                            Text(product.rating)
                                            Spacer()
                                            if product.image == "4" || product.image == "7" {
                                                Image("sale")
                                            }
                                        }
                                        
                                        HStack {
                                            Text(product.name)
                                                .font(.system(size: 12))
                                                .multilineTextAlignment(.leading)
                                                .fixedSize(horizontal: false, vertical: true)
                                        }
                                        countryInfoView(for: product)
                                        if product.image == "4" {
                                            SelectionButton(isSelected: $isSelected)
                                                .padding(.leading, 5)
                                                .padding(.trailing, 5)
                                            
                                        }
                                        if product.image == "4" || product.image == "6" {
                                            weightSelection()
                                            Spacer()
                                        } else {
                                            HStack {
                                                HStack(alignment: .top, spacing: 0) {
                                                    Text(product.price)
                                                        .font(.system(size: 20))
                                                        .fontWeight(.bold)
                                                        .fixedSize(horizontal: true, vertical: false)
                                                        .padding(.leading, 5)
                                                    
                                                    Text("90")
                                                        .font(.system(size: 16))
                                                        .fontWeight(.bold)
                                                        .offset(y: -1)
                                                        .fixedSize(horizontal: true, vertical: false)
                                                    
                                                    
                                                    Text("₽/кг")
                                                        .font(.system(size: 12))
                                                        .offset(y: -1)
                                                }
                                                Spacer()
                                                Button(action: {
                                                    cart.add(product: product)
                                                    showCartView = true
                                                }) {
                                                    ZStack {
                                                        Capsule()
                                                            .fill(Color.green)
                                                            .frame(width: 48, height: 36)
                                                        
                                                        Image("cart")
                                                            .resizable()
                                                            .scaledToFit()
                                                            .frame(width: 13, height: 13)
                                                            .foregroundColor(.white)
                                                    }
                                                    .padding(.trailing, 5)
                                                    .padding(.top, 10)
                                                }
                                            }
                                            Text("199,0")
                                                .font(.system(size: 14))
                                                .foregroundColor(.gray)
                                                .strikethrough()
                                                .padding(.leading, -75)
                                                .padding(.top, -20)
                                        }
                                    }
                                    showSales(for: product)
                                    showNews(for: product)
                                    showByCard(for: product)
                                    
                                    VStack(spacing: 5) {
                                        Image("check")
                                            .frame(width: 32, height: 32)
                                        HeartButton()
                                    }
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 16)
                                            .stroke(Color.white.opacity(0.5), lineWidth: 1)
                                    )
                                    .padding(.leading, 135)
                                    .padding(.top, -140)
                                }
                            }
                        }
                    }
                }
            }
            .navigationDestination(isPresented: $showCartView) {
                CartView()
            }
        }
    }
    
    private func countryInfoView(for product: Product) -> some View {
        Group {
            if product.image == "6" || product.image == "13" {
                HStack {
                    Text("Франция")
                        .font(.system(size: 12))
                        .foregroundStyle(.gray)
                        .padding(.trailing, 85)
                    
                    Image("flag")
                        .resizable()
                        .frame(width: 15, height: 14)
                        .padding(.leading, -90)
                }
                .padding(.top, 10)
            }
        }
    }
    
    private func weightSelection() -> some View {
        HStack {
            Spacer()
            Text("-")
                .padding()
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
            VStack {
                Text("0.1 кг")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("~5,92₽")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
            Spacer()
            Text("+")
                .padding()
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .frame(width: 160, height: 36)
        .background(Color.green)
        .cornerRadius(40)
        .padding(.top, -5)
    }
    
    private func showSales(for product: Product) -> some View {
        Group {
            if product.image == "1" || product.image == "10" {
                Image("sales")
                    .clipShape(
                        .rect(
                            topLeadingRadius: 20))
                    .padding(.leading, -85)
                    .padding(.top, -140)
            }
        }
    }
    
    private func showNews(for product: Product) -> some View {
        Group {
            if product.image == "5" || product.image == "7" || product.image == "12" {
                Image("news")
                    .clipShape(
                        .rect(
                            topLeadingRadius: 20))
                    .padding(.leading, -85)
                    .padding(.top, -140)
            }
        }
    }
    
    private func showByCard(for product: Product) -> some View {
        Group {
            if product.image == "6" || product.image == "14" {
                Image("byCard")
                    .clipShape(
                        .rect(
                            topLeadingRadius: 20))
                    .padding(.leading, -85)
                    .padding(.top, -140)
            }
        }
    }
}

#Preview {
    MainScreen()
        .environmentObject(Cart())
}
