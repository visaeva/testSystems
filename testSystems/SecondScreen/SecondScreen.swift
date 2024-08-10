import SwiftUI

struct SecondScreen: View {
    @StateObject var viewModel = SecondListViewModel()
    @State private var isSelected: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("chips")
                .padding(.top, 10)
                .padding(.leading, 10)
            Divider()
                .padding(.bottom, 10)
            List {
                ForEach(viewModel.products) { product in
                    HStack {
                        VStack(alignment: .trailing) {
                            ZStack(alignment: .topLeading) {
                                Image(product.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 144, height: 144)
                                
                                if product.image == "17" {
                                    Image("sales")
                                        .clipShape(
                                            .rect(
                                                topLeadingRadius: 50
                                            ))
                                        .padding(.leading, 5)
                                }
                                showNews(for: product)
                            }
                            
                            HStack {
                                if product.image != "18" {
                                    Image("sale")
                                        .padding(.top, -25)
                                        .padding(.leading, -35)
                                }
                            }
                        }
                        
                        VStack(alignment:.leading) {
                            HStack {
                                Image(product.starImage)
                                Text(product.rating)
                                    .font(.system(size: 12))
                                
                                Text("| 19 отзывов")
                                    .font(.system(size: 12))
                                    .foregroundStyle(.gray)
                            }
                            
                            Text(product.name)
                                .font(.system(size: 12))
                            
                            if product.image == "15" {
                                if product.showSelectionButton {
                                    SelectionButton(isSelected: $isSelected)
                                    
                                    weightSelection()
                                } else {
                                    HStack {
                                        Text(product.price)
                                            .font(.system(size: 20))
                                            .fontWeight(.bold)
                                            .lineLimit(1)
                                        
                                        Text("90")
                                            .font(.system(size: 16))
                                            .fontWeight(.bold)
                                            .offset(y: -1)
                                        
                                        Text("₽/кг")
                                            .font(.system(size: 12))
                                            .offset(y: -1)
                                            .padding(.leading, 5)
                                    }
                                    .padding(.top, 15)
                                }
                            }
                            if product.image == "16" || product.image == "17"  || product.image == "18" {
                                HStack {
                                    Text("Франция")
                                        .font(.system(size: 12))
                                        .foregroundStyle(.gray)
                                    Image("flag")
                                }
                                .padding(.top, -5)
                                
                                VStack(alignment:.leading) {
                                    HStack(alignment: .top, spacing: 0) {
                                        Text(product.price)
                                            .font(.system(size: 20))
                                            .fontWeight(.bold)
                                            .lineLimit(1)
                                        
                                        Text("90")
                                            .font(.system(size: 16))
                                            .fontWeight(.bold)
                                            .offset(y: -1)
                                        
                                        Text("₽/кг")
                                            .font(.system(size: 12))
                                            .offset(y: -1)
                                            .padding(.leading, 5)
                                    }
                                    .padding(.top, 15)
                                    Text("199,0")
                                        .font(.system(size: 14))
                                        .foregroundColor(.gray)
                                        .strikethrough()
                                }
                            }
                        }
                        Spacer()
                        
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
                        .padding(.top, -75)
                    }
                    .listRowInsets(EdgeInsets())
                    .overlay(
                        Group {
                            if !product.showSelectionButton {
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
                                .padding(.bottom, 10)
                                .padding(.trailing, 15)
                            }
                        },
                        alignment: .bottomTrailing
                    )
                }
            }
            .listStyle(PlainListStyle())
        }
    }
    
    private func weightSelection() -> some View {
        HStack {
            Text("-")
                .padding()
                .foregroundStyle(.white)
            VStack {
                Text("0.1 кг")
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                Text("~5,92₽")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
            Text("+")
                .padding()
                .foregroundStyle(.white)
        }
        .frame(width: 200, height: 36)
        .background(Color.green)
        .cornerRadius(40)
    }
    
    private func showNews(for product: ProductStruct) -> some View {
        Group {
            if product.image == "15" && product.showSelectionButton {
                Image("sales")
                    .clipShape(
                        .rect(
                            topLeadingRadius: 50
                        ))
                    .padding(.leading, 5)
                
            } else if product.image == "16" {
                Image("news")
                    .clipShape(
                        .rect(
                            topLeadingRadius: 50
                        ))
                    .padding(.leading, 5)
            }
        }
    }
}

#Preview {
    SecondScreen()
}
