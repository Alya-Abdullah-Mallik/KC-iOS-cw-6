//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        ZStack{
            Image("back")
                .resizable()
                .frame(width: 430, height: 950)
                .scaledToFit()
            
        VStack{
            
Text("اذكارك اليومية")
                .font(.largeTitle)
                .offset(x: 0, y: -100)
            
            Image(systemName: "wifi")
                .offset(x: 135, y: -184)
            
            Image(systemName: "battery.50")
                .offset(x: 170, y: -199)
            
            Text("6:12")
                .offset(x: -160, y: -210)
                .font(.body)
            
            
            RowView(Mycounter: $counter[0], title: "استغفرالله العظيم")
            RowView(Mycounter: $counter[1], title: "الحمدلله")
            RowView(Mycounter: $counter[2], title: "سبحان الله العظيم ")


           
        }
    }
}
}

// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RowView: View {
    @Binding var Mycounter : Int
    @State var title: String
    var body: some View {
        HStack{
            Text(title).font(.title)
            Spacer()
            Text("\(Mycounter)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.black)
                .background(.bar)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    Mycounter = Mycounter + 1
                }
        }.padding()
    }
}
