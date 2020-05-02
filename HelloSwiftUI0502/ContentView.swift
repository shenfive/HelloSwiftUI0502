//
//  ContentView.swift
//  HelloSwiftUI0502
//
//  Created by 申潤五 on 2020/5/2.
//  Copyright © 2020 申潤五. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var displayString = ""
    
    @State var r:CGFloat = 0.5
    @State var g:CGFloat = 0.5
    @State var b:CGFloat = 0.5
    
    
    var body: some View {
        ZStack{
            Color(UIColor(red: r, green: g, blue: b, alpha: 1))
            VStack{
                HStack{
                    MyText(text: "R:", value: r)
                    MyText(text: "G:", value: g)
                    MyText(text: "B:", value: b)
                }
                Spacer()
                Slider(value: $r).padding(.horizontal, 15.0)
                Slider(value: $g).padding(.horizontal, 15.0)
                Slider(value: $b).padding([.leading, .bottom, .trailing], 15.0)

            }
        }
    }
}


struct MyText:View{
    
    var text:String
    var value:CGFloat
    
    var body:some View{
        Text(text + "\(Int(value*255))  ").font(.largeTitle)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
