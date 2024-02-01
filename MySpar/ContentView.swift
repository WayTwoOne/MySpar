//
//  ContentView.swift
//  MySpar
//
//  Created by Vladimir on 31.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var pieces = 1
    @State private var pricePerPiece = 120.0
    @State private var pricePerkilogram = 55.9
    @State private var total = 120.0
    @State private var selectedColorIndex = 0
    @State private var quantity = 152
    
    var body: some View {
        NavigationView {
            TabView {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ImageAndNameOfProductView()
                        DescriptionView()
                        ReviewsView(quantity: $quantity)
                        StepperView(selectedColorIndex: $selectedColorIndex, pieces: $pieces, total: $total)
                        TheQuantityOfTheProductView(pricePerkilogram: $pricePerkilogram, pieces: $pieces, pricePerPiece: $pricePerPiece, total: $total, selectedColorIndex: $selectedColorIndex)
                            .padding(.horizontal)
                    }
                }
                
                .tabItem {
                    Image("SparLogo")
                        .background(Color.gray)
                    Text("Главная")
                }
                
                Text("")
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Каталог")
                    }
                
                Text("")
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Корзина")
                    }
                
                Text("")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Профиль")
                    }
            }
            
            .navigationBarItems(leading: Button(action: {
                print("You have returned to the previous screen")
            }, label: {
                Image(systemName: "arrow.left")
                    .foregroundColor(.green)
            }))
            
            .navigationBarItems(trailing: Button(action: {
                print("You have liked the product")
            }, label: {
                Image(systemName: "suit.heart")
                    .foregroundColor(.green)
            }))
            
            .navigationBarItems(trailing: Button(action: {
                print("You have shared the product")
            }, label: {
                Image(systemName: "square.and.arrow.up")
                    .foregroundColor(.green)
            }))
            
            .navigationBarItems(trailing: Button(action: {
                print("You have opened the tip menu for the developer")
            }, label: {
                Image(systemName: "list.bullet.rectangle.portrait")
                    .foregroundColor(.green)
            }))
        
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
