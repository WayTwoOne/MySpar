//
//  PiecesOrkilogramsView.swift
//  MySpar
//
//  Created by Vladimir on 31.01.2024.
//

import SwiftUI

struct StepperView: View {
    @Binding var selectedColorIndex: Int
    @Binding var pieces: Int
    @Binding var total: Double
    
    var body: some View {
        VStack(alignment: .leading) {
            Picker("", selection: $selectedColorIndex, content: {
                Text("Шт").tag(0)
                Text("Кг").tag(1)
            })
            .onChange(of: selectedColorIndex) { newValue in
                pieces = 1
                if selectedColorIndex == 0 {
                    total = 120.0
                } else {
                    total = 55.9
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView(selectedColorIndex: .constant(1), pieces: .constant(0), total: .constant(0.0))
    }
}
