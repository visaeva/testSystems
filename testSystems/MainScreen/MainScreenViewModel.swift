import SwiftUI

class MainScreenViewModel: ObservableObject {
    @Published var products = [
        Product(name: "Сыр Ламбер 500/0 230г", price: "99", image: "1", rating:"4.1", starImage:"star"),
        Product(name: "Энергетический Напит", price: "95699", image: "2",rating:"4.1", starImage:"star"),
        Product(name: "Салат овощной с Крабовыми Палочками", price: "250", image: "3",rating:"4.1", starImage:"star"),
        Product(name: "Дорадо Охлажденная Непотрошенная 300-400г", price: "", image: "4",rating:"4.1", starImage:"star"),
        Product(name: "Ролл Маленькая Япония 216г", price: "367", image: "5", rating:"4.1", starImage:"star"),
        Product(name: "Огурцы тепличные садово-огороные", price: "", image: "6",rating:"4.1", starImage:"star"),
        Product(name: "Манго Кео", price: "1298", image: "7", rating:"4.1", starImage:"star"),
        Product(name: "Салат овощной с Крабовыми палочками", price: "120", image: "8",rating:"4.1", starImage:"star"),
        Product(name: "Салат овощной с Крабовыми Палочками", price: "1298", image: "9",rating:"4.1", starImage:"star"),
        Product(name: "Масло Слобода Рафинированное 1,8л", price: "1298", image: "10",rating:"4.1", starImage:"star"),
        Product(name: "Салат овощной с Крабовыми Палочками", price: "259", image: "11", rating:"4.1", starImage:"star"),
        Product(name: "Макаронные изделия SPAR Спагетти 450г", price: "2600", image: "12",rating:"4.1", starImage:"star"),
        Product(name: "Огурцы тепличные садово-огороные", price: "129", image: "13", rating:"4.1", starImage:"star"),
        Product(name: "Огурцы тепличные садово-огороные", price: "120", image: "14",rating:"4.1", starImage:"star")
    ]
    
    let columns = [
        GridItem(.adaptive(minimum: 168, maximum: 168))
    ]
    
}


