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
    var body: some View {
        ZStack{
            Color(red: 1, green: 0, blue: 0)
            VStack{
                HStack{
                    Text("R:")
                    Text("G:")
                    Text("B:")
                }
                Spacer()
                Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
                Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
                Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
