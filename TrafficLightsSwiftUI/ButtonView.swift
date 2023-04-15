//
//  ButtonView.swift
//  TrafficLightsSwiftUI
//
//  Created by Max Franz Immelmann on 4/14/23.
//

import SwiftUI

struct ButtonView: View {
    let buttonTitle: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(buttonTitle)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .clipShape(Capsule())
        .overlay(Capsule().stroke(Color.white, lineWidth: 4))
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonTitle: "Start", action: {})
    }
}
