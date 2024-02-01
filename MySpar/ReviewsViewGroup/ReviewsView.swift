//
//  ReviewsView.swift
//  MySpar
//
//  Created by Vladimir on 31.01.2024.
//

import SwiftUI

struct ReviewsView: View {
    @Binding var quantity: Int
    
    var body: some View {
        VStack {
            HStack {
                Text("Отзывы")
                    .font(.system(size: 25, weight: .bold, design: .default))
                Spacer()
                Button("Все \(quantity)", action: {})
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(.green)
            }
            .padding()
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(1..<quantity) { _ in
                        ReviewsViewCell()
                            .frame(width: 280, height: 190)
                    }
                }
            })
            ZStack {
                Rectangle()
                    .frame(width: 360, height: 40)
                    .cornerRadius(20)
                    .foregroundColor(.green)
                
                Button("Оставить отзыв", action: {})
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .frame(width: 350, height: 30)
                    
                    .background(Color.white)
                    .foregroundColor(.green)
                    .cornerRadius(20)

                    .padding()
                    
            }
        }
    }
}

struct ReviewsView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsView(quantity: .constant(152))
    }
}
