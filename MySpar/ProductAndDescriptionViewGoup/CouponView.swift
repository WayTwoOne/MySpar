//
//  CouponView.swift
//  MySpar
//
//  Created by Vladimir on 31.01.2024.
//

import SwiftUI

struct CouponView: View {
    var body: some View {
            GeometryReader { geomety in
                let width = geomety.size.width
                let height = geomety.size.height
                
                let size = min(width, height)
                
                let nearLine = size * 0.1
                let farLine = size * 0.9
                let middleLine = size / 4
                
                Path { path in
                    path.move(to: CGPoint(x: nearLine, y: nearLine))
                    path.addCurve(to: CGPoint(x: farLine, y: nearLine - nearLine), control1: CGPoint(x: middleLine + nearLine, y: middleLine - nearLine), control2: CGPoint(x: (middleLine + nearLine) * 2, y: middleLine - nearLine))

                    path.addLine(to: CGPoint(x: farLine + nearLine / 2, y: farLine - nearLine * 3))
                    path.addCurve(to: CGPoint(x: nearLine, y: farLine - nearLine * 3), control1: CGPoint(x: middleLine + nearLine, y: farLine + nearLine / 4), control2: CGPoint(x: middleLine - nearLine * 1.5, y: farLine - nearLine * 3))
                }
                
                .fill(Color(.red))
                
                Text("-5%")
                    .foregroundColor(.white)
                    .font(.system(size: middleLine))
                    .frame(alignment: .center)
                    .offset(x: middleLine , y: middleLine )
            }
        }
    }

struct CouponView_Previews: PreviewProvider {
    static var previews: some View {
        CouponView()
            .frame(width: 200, height: 200)
    }
}
