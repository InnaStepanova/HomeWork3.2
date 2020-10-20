//
//  SliderView.swift
//  HomeWork3.2
//
//  Created by Инна Степанова on 21.10.2020.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double

    var body: some View {
        HStack {
            Text("\(lround(value))")
            Slider(value: $value, in: 0...255)
               
        }
        .padding()
    }
}

// Закомментировала, тк постоянно выдавал ошибку, что не инициализировано. А каким Биндингом его инициализировать я не поняла(
//struct SliderView_Previews: PreviewProvider {
//    static var previews: some View {
//        SliderView(value: <#T##Binding<Double>#>)
//    }
//}
