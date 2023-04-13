//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Max Franz Immelmann on 4/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red)
                Spacer()
                ColorCircleView(color: .yellow)
                Spacer()
                ColorCircleView(color: .green)
                Spacer()
                Spacer()
                Button(action: { }) {
                    Text("Start")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(Capsule())
                }
            }
            .frame(width: 130.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
