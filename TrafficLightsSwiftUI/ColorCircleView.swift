//
//  ColorCircleView.swift
//  TrafficLightsSwiftUI
//
//  Created by Max Franz Immelmann on 4/13/23.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    
    var body: some View {
        let size = UIScreen.main.bounds.width * 0.5
        Circle()
            .foregroundColor(color)
            .opacity(0.5)
            .frame(width: size)
            .overlay(Circle().stroke(Color.white, lineWidth: size / 100))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red)
    }
}
