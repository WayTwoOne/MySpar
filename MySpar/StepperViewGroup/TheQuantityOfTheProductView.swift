//
//  StepperView.swift
//  MySpar
//
//  Created by Vladimir on 31.01.2024.
//

import SwiftUI

struct TheQuantityOfTheProductView: View {
    @Binding var pricePerkilogram: Double
    @Binding var pieces: Int
    @Binding var pricePerPiece: Double
    @Binding var total: Double
    @Binding var selectedColorIndex: Int
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(String(format: "%.1f", pricePerkilogram))
                        .font(.system(size: 30, weight: .bold, design: .default))
                    FractionView(numerator: "₽", denominator: "кг")
                        .font(.system(size: 12, weight: .bold, design: .default))
                }
                Text("199.0")
                    .strikethrough(true, color: .black)
                    .font(.system(size: 13))
                    
            }
            Spacer()
            
            ZStack {
                Rectangle()
                    .frame(width: 200, height: 50)
                    .foregroundColor(.green)
                    .cornerRadius(30)
                HStack {
                    Button {
                        if pieces != 1 {
                            pieces -= 1
                            if selectedColorIndex == 0 {
                                total -= pricePerPiece
                            } else {
                                total -= pricePerkilogram
                            }
                        }
                        
                    } label: {
                        Image(systemName: "minus")
                            .padding(40)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .frame(maxWidth: 40, maxHeight: 40)
                            .cornerRadius(100)
                    }
                    .frame(alignment: .leading)
                    VStack(alignment: .center, spacing: 0) {
                        if selectedColorIndex == 0 {
                            
                            Text("\(pieces) шт")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                        } else {
                            Text("\(pieces) кг")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                        }
                        Text("\(String(format: "%.1f", total)) ₽")
                            .font(.system(size: 13))
                            .frame(width: 80)
                            .foregroundColor(.white)
                        
                            
                    }
                    
                    Button {
                        if selectedColorIndex == 0 {
                            pieces += 1
                            total += pricePerPiece
                        } else {
                            pieces += 1
                            total += pricePerkilogram
                        }
                    } label: {
                        Image(systemName: "plus")
                            .padding(40)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .frame(maxWidth: 40, maxHeight: 40)
                            .cornerRadius(100)
                    }
                }
            }
        }
    }
}

struct TheQuantityOfTheProductView_Previews: PreviewProvider {

    static var previews: some View {
        TheQuantityOfTheProductView(pricePerkilogram: .constant(55.9), pieces: .constant(1), pricePerPiece: .constant(120.0), total: .constant(120.0), selectedColorIndex: .constant(0))
    }
}
