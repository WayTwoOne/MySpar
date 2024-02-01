//
//  FractionView.swift
//  MySpar
//
//  Created by Vladimir on 31.01.2024.
//

import SwiftUI

struct FractionView: View {
    @ScaledMetric var scale: CGFloat = 24
    
    var numerator: String
    var denominator: String
    var body: some View {
        ZStack {
            Text("\(numerator) ")
                .alignmentGuide(VerticalAlignment.center,
                                computeValue: { d in d[.bottom] })
                .alignmentGuide(HorizontalAlignment.center,
                                computeValue: { d in d[.trailing] })
            
            Text("\u{2215}").font(.system(size: scale))
            
            Text(" \(denominator)")
                .alignmentGuide(VerticalAlignment.center,
                                computeValue: { d in d[.top] })
                .alignmentGuide(HorizontalAlignment.center,
                                computeValue: { d in d[.leading] })
        }
    }
}

struct FractionView_Previews: PreviewProvider {
    static var previews: some View {
        FractionView(numerator: "1", denominator: "2")
    }
}
