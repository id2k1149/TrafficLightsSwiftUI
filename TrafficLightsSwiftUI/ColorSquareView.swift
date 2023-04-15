//
//  ColorSquareView.swift
//  TrafficLightsSwiftUI
//
//  Created by Max Franz Immelmann on 4/15/23.
//

import SwiftUI

struct ColorSquareView: View {
    var body: some View {
        Rectangle()
            .frame(width: 250, height: 250)
            .foregroundColor(.orange)
            .overlay(Rectangle().stroke(.orange, lineWidth: 18))
            .overlay(Rectangle().stroke(Color.black, lineWidth: 4))
            .rotationEffect(Angle(degrees: 45))
            .padding()
    }
}

struct ColorSquareView_Previews: PreviewProvider {
    static var previews: some View {
        
        ColorSquareView()
            .previewInterfaceOrientation(.portrait)
        ColorSquareView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
