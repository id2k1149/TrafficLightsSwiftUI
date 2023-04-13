//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Max Franz Immelmann on 4/13/23.
//

import SwiftUI

enum LightIs {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var currentLight = LightIs.green
    
    @State private var redOpacity = 0.2
    @State private var yellowOpacity = 0.2
    @State private var greenOpacity = 0.2
    
    @State private var buttonTitle = "START"
    
    private func StartButtonWasTapped() {
        buttonTitle = "NEXT"
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            redOpacity = 0.2
            yellowOpacity = 1
        case .yellow:
            currentLight = .green
            yellowOpacity = 0.2
            greenOpacity = 1
        case .green:
            currentLight = .red
            greenOpacity = 0.2
            redOpacity = 1
        }
    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red, opacity: redOpacity)
                ColorCircleView(color: .yellow, opacity: yellowOpacity)
                ColorCircleView(color: .green, opacity: greenOpacity)

                Button(action: { StartButtonWasTapped() }) {
                    Text(buttonTitle)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.horizontal, 56)
                        .padding(.vertical, 8)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .overlay(Capsule().stroke(Color.white, lineWidth: 4))
                }
                .padding(.top, 64)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
