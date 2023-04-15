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
    
    @State private var redOpacity = 1.0
    @State private var yellowOpacity = 1.0
    @State private var greenOpacity = 1.0
    
    @State private var buttonTitle = "START"
    
    private func startButtonWasTapped() {
        buttonTitle = "NEXT"
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            redOpacity = 0.2
            greenOpacity = 0.2
            yellowOpacity = 1
        case .yellow:
            currentLight = .green
            yellowOpacity = 0.2
            redOpacity = 0.2
            greenOpacity = 1
        case .green:
            currentLight = .red
            greenOpacity = 0.2
            yellowOpacity = 0.2
            redOpacity = 1
        }
    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 16) {
                ColorSquareView()
                    .overlay(
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 100, height: 250)
                            .cornerRadius(25)
                            .overlay(
                                VStack() {
                                    ColorCircleView(color: .red,
                                                    opacity: redOpacity)
                                    ColorCircleView(color: .yellow,
                                                    opacity: yellowOpacity)
                                    ColorCircleView(color: .green,
                                                    opacity: greenOpacity)
                                }
                                .padding()
                            )
                    )
                ButtonView(buttonTitle: buttonTitle,
                           action: startButtonWasTapped)
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
