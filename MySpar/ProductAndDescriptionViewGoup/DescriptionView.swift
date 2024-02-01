//
//  DescriptionView.swift
//  MySpar
//
//  Created by Vladimir on 31.01.2024.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 10) {
                Text("Описание")
                    .font(.system(size: 16, weight: .bold, design: .default))
                Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов")
            }
            .padding()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Основные характеристики")
                    .font(.system(size: 16, weight: .bold, design: .default))
                
                HStack(alignment: .top) {
                    Text("Производство")
                        Spacer()
                    Text("........")
                        .foregroundColor(.gray)
                    Text("Россия, Краснодарский край")
                        .multilineTextAlignment(.trailing)
                }
                
                
                HStack(alignment: .top) {
                    Text("Энергетическая ценность, ккал/100 г")
                    Spacer()
                    Text(".......................")
                        .foregroundColor(.gray)
                    Text("25 ккал, 105 кДж")
                        .multilineTextAlignment(.trailing)
                }
                
                HStack(alignment: .top) {
                    Text("Жиры/100 г")
                    Spacer()
                    Text("...............................................")
                        .foregroundColor(.gray)
                    Text("0,1 г")
                        .multilineTextAlignment(.trailing)
                }
                
                HStack(alignment: .top) {
                    Text("Белки/100 г")
                    Spacer()
                    Text("...............................................")
                        .foregroundColor(.gray)
                    Text("1,3 г")
                        .multilineTextAlignment(.trailing)
                }
                
                HStack(alignment: .top) {
                    Text("Углеводы/100 г")
                    Spacer()
                    Text("........................................")
                        .foregroundColor(.gray)
                    Text("3,3 г")
                        .multilineTextAlignment(.trailing)
                }
                
            }
            .padding()
            
            Button("Все характеристики", action: {})
                .font(.system(size: 16, weight: .bold, design: .default))
                .foregroundColor(.green)
                .padding()
        }
        
        
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}
