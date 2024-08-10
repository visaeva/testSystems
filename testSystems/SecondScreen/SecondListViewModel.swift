import SwiftUI

class SecondListViewModel: ObservableObject {
    @Published var products = [
        ProductStruct(name: "Огурцы тепличные садово-огородные", price: "", image: "15", rating: "4.1", starImage: "star", showSelectionButton: true),
        ProductStruct(name: "Дорадо Охлажденная Непотрошенная 300-400г", price: "120", image: "16", rating: "4.1", starImage: "star", showSelectionButton: false),
        ProductStruct(name: "Энергетический напиток Adrenaline Rush 0,449л ж/б", price: "99", image: "18", rating: "4.1", starImage: "star", showSelectionButton: false),
        ProductStruct(name: "Манго Кео", price: "95699", image: "17", rating: "4.1", starImage: "star", showSelectionButton: false),
        ProductStruct(name: "Сыр Ламбер 500/0 230г", price: "95699", image: "15", rating: "4.1", starImage: "star", showSelectionButton: false),
        ProductStruct(name: "Сыр Ламбер 500/0 230г", price: "95699", image: "15", rating: "4.1", starImage: "star", showSelectionButton: false),
        ProductStruct(name: "Сыр Ламбер 500/0 230г", price: "95699", image: "15", rating: "4.1", starImage: "star", showSelectionButton: false),
        ProductStruct(name: "Сыр Ламбер 500/0 230г", price: "95699", image: "15", rating: "4.1", starImage: "star", showSelectionButton: false)
    ]
}

