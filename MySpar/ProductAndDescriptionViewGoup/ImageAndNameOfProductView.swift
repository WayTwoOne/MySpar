//
//  ImageAndNameOfProductView.swift
//  MySpar
//
//  Created by Vladimir on 31.01.2024.
//

import SwiftUI

struct ImageAndNameOfProductView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Rectangle()
                    .frame(width: 130, height: 30)
                    .foregroundColor(.green)
                    .cornerRadius(5)
                Text("Цена по карте")
                    .foregroundColor(.white)
            }
            .padding(.horizontal)
            Image("Lipa")
                .resizable()
                .frame(width: 350, height: 350, alignment: .center)
                .padding(.horizontal)
            
            HStack {
                HStack {
                    Image("YellowStar")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("4.1")
                    Text("| 19 отзывов")
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)
                Spacer()
                CouponView()
                    .frame(width: 40, height: 40)
                    .padding(.horizontal)
            }
            
            Text("Добавка \"Липа\" к чаю 200 г")
                .multilineTextAlignment(.leading)
                .font(.system(size: 40, weight: .heavy, design: .default))
                .padding(.horizontal)
            
            HStack {
                Image("Spain")
                    .frame(width: 30, height: 30)
                    .cornerRadius(20)
                Text("Испания, Риоха")
            }
            .padding(.horizontal)
        }
    }
}

struct ImageAndNameOfProductView_Previews: PreviewProvider {
    static var previews: some View {
        ImageAndNameOfProductView()
    }
}
