//
//  ContentView.swift
//  HomeWork3.2
//
//  Created by Инна Степанова on 19.10.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    
    var body: some View {
        ZStack {
            Color(.systemGray3)
                .ignoresSafeArea(.all)
            VStack {
                Color(red: (redSliderValue/255),
                      green: (greenSliderValue/255),
                      blue: (blueSliderValue/255))
                    .frame(height: 150)
                    .cornerRadius(25)
                    .overlay(RoundedRectangle(cornerRadius: 25.0)
                                .stroke(Color.white, lineWidth: 4))
                    
                    .padding()
                SliderView(value: $redSliderValue)
                    .accentColor(.red)
                SliderView(value: $greenSliderValue)
                    .accentColor(.green)
                SliderView(value: $blueSliderValue)
                    .accentColor(.blue)
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

