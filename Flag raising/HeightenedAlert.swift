//
//  HeightenedAlert.swift
//  Flag raising
//
//  Created by sanjithsethu on 16/6/21.
//

import SwiftUI

struct HeightenedAlert: View {
    
    @State var alert: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color(red: 0.871, green: 0.859, blue: 0.824).ignoresSafeArea()
            VStack {
                Text("Alert!")
                    .padding()
                    .background(Color(red: 0.6901960784313725, green: 0.7686274509803922, blue: 0.6941176470588235))
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.5882352941176471, green: 0.40784313725490196, blue: 0.44313725490196076)/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 30))
                    .cornerRadius(20)
                    .padding()
                    .offset(y: alert)
                    
                
                Button("🦠 Heighten 🦠") {
                    withAnimation {
                        alert -= 10
                    }
                }
                .padding()
                .background(Color(hue: 0.139, saturation: 1.0, brightness: 1.0))
                .foregroundColor(Color(red: 0.5882352941176471, green: 0.027450980392156862, blue: 0.0))
                .font(.system(size: 20))
                .cornerRadius(20)
                .padding()
            }
            .frame(maxHeight: .infinity,
                   alignment: .bottom)
            .padding()
        }
        
        
        
    }
    
}

struct HeightenedAlert_Previews: PreviewProvider {
    static var previews: some View {
        HeightenedAlert()
    }
}
