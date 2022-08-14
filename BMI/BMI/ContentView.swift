//
//  ContentView.swift
//  BMI
//
//  Created by Alya Mallik on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var result = 0.0
    @State var health = ""
    @State var pic = "back"
    var body: some View {
        VStack{
            Image(systemName: "wifi")
                .offset(x: 140, y: -165)
            
            Image(systemName: "battery.75")
                .offset(x: 170, y: -180)

            Text("3:50")
                .font(.body)
                .offset(x: -155, y: -190)
            
            Image(pic)
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
            
            TextField("Weigth", text: $weight)
                .frame(width: 410, height: 50)
                .background(.mint)
                .cornerRadius(10)
                .opacity(0.7)
            
            
            TextField("Height", text: $height)
                .frame(width: 410, height: 50)
                .background(.mint)
                .cornerRadius(10)
                .opacity(0.7)
            
            Button {
                result =
                bmiCalc(w: Double(weight) ?? 0.0, h: Double(height) ?? 0.0)
                
                if result <= 20{
                    health = "ضعيف"
                    pic = "pic1"
                }
                
                else if result >= 25{
                    health = "جيد "
                    pic = "pic2"
                }
            
                else{
                    health = "سمين"
                    pic = "pic3"
                }
                
            } label: {
                Text("احسب")
                    .frame(width: 70, height: 60)
                    .foregroundColor(.white)
                    .background(.indigo)
                    .cornerRadius(10)
            }
            Text("BMI = \(result)")
                .font(.title2)
            
            Text("الحالة = \(health)")
                .font(.title2)
        }
    }
    func bmiCalc(w: Double, h:Double) -> Double{
        return w / (h*h)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
