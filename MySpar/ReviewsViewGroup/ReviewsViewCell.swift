//
//  ReviewsViewCell.swift
//  MySpar
//
//  Created by Vladimir on 31.01.2024.
//

import SwiftUI

struct ReviewsViewCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Александр В.")
                .font(.system(size: 16, weight: .bold, design: .default))
            Text("7 мая 2021")
                .foregroundColor(.gray)
            HStack {
                ForEach(1..<5) { _ in
                    Image("YellowStar")
                }
                Image("GrayStar")
            }
            Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
        }
        .padding()
    }
}

struct ReviewsViewCell_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsViewCell()
    }
}
