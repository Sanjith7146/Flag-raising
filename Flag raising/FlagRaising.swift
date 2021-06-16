//
//  FlagRaising.swift
//  Flag raising
//
//  Created by sanjithsethu on 16/6/21.
//

import SwiftUI

struct FlagRaising: View {
    
    @State var flag: CGFloat = 0
    @State var resetFlag = false
    
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
              
                HStack {
                    Button("Majulah!") {
                        withAnimation {
                            flag -= 10
                        }
                    }
                    .padding()
                    .background(Color(red: 0.6901960784313725, green: 0.7686274509803922, blue: 0.6941176470588235))
                    .foregroundColor(Color(red: 0.5882352941176471, green: 0.027450980392156862, blue: 0.0))
                    .font(.system(size: 20))
                    .cornerRadius(20)
                    .padding()
                    
                    Button("Reset"){
                        withAnimation{
                            resetFlag = true
                        }
                    }
                    .padding()
                    .background(Color(red: 0.6901960784313725, green: 0.7686274509803922, blue: 0.6941176470588235))
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.5882352941176471, green: 0.40784313725490196, blue: 0.44313725490196076)/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 20))
                    .cornerRadius(20)
                    .padding()
                    .alert(isPresented: $resetFlag){
                        Alert(title: Text("Are you sure you want to reset the flag?"),
                              primaryButton: .default(Text("Yes, reset")){
                                withAnimation{
                                   flag = 0
                                }
                              },
                              secondaryButton: .default(Text("No")){
                                resetFlag = false
                           })
                    }
                    
                }
                
              //Spacer()
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
