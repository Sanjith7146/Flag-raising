//
//  ContentView.swift
//  Flag raising
//
//  Created by sanjithsethu on 16/6/21.
//

import SwiftUI

struct ContentView: View {
   
    @State var alert: CGFloat = 0
    
    var body: some View {
        TabView {
            FlagRaising().tabItem {
                Image(systemName: "flag")
                Text("Flag Raising")
            }
            
            HeightenedAlert().tabItem {
                Image(systemName: "figure.stand.line.dotted.figure.stand")
                Text("Heightened Alert")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
