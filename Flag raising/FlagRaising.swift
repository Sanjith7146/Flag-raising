//
//  FlagRaising.swift
//  Flag raising
//
//  Created by sanjithsethu on 16/6/21.
//

import SwiftUI

struct FlagRaising: View {
    
    @State var flag: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color(red: 0.871, green: 0.859, blue: 0.824).ignoresSafeArea()

            VStack {
                Spacer()
                HStack(alignment: .bottom, spacing: 0) {
                    Rectangle().frame(width: 10)
                    Text("🇸🇬")
                        .font(.system(size: 100))
                        .padding()
                        .offset(x: -30, y: flag)
                        .frame(maxHeight: 100, alignment: .center)
                    
                }
              
                Button("Majulah! ") {
                    withAnimation {
                        flag -= 10
                    }
                }
                .padding()
                .background(Color(hue: 0.139, saturation: 1.0, brightness: 1.0))
                .foregroundColor(Color(red: 0.5882352941176471, green: 0.027450980392156862, blue: 0.0))
                .font(.system(size: 20))
                .cornerRadius(20)
                .padding()
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .padding()
            
        }
        
        
        //.edgesIgnoringSafeArea(.top)
    }
}

struct FlagRaising_Previews: PreviewProvider {
    static var previews: some View {
        FlagRaising()
            .previewLayout(.device)
            .previewDevice("iPhone 12 Pro Max")
    }
}
