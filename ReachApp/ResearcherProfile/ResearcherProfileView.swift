//
//  ResearcherProfileView.swift
//  SwiftsM
//
//  Created by mashael on 22/01/1445 AH.
//

import SwiftUI

struct ResearcherProfileView: View {
    @StateObject var rAppInfo = ResearcherBankModelView()
    @State private var isShowingPopover = false
        @State var M = ""
        let hi =  Data_Models(FullName: "Danah", University: "")
                    var body: some View {
                        VStack(){
                            
                            HStack{
                                ZStack{
                                    Circle()
                                        .frame(width: 50)
                                        .foregroundColor(Color(red: 0.30980392156862746, green: 0.38823529411764707, blue: 0.403921568627451, opacity: 0.496))
                                    
                                    Text("M")
                                        .font(.title2).fontWeight(.semibold).foregroundColor(Color(red: 0.30980392156862746, green: 0.38823529411764707, blue: 0.403921568627451, opacity: 0.836))
                                    
                                }
                                
                                Text(hi.FullName)
                                    .fontWeight(.semibold)
                                    .font(.title2)
                                Spacer()
                                
                            }
                            //.offset(x:-40,y:30)
                            HStack{
                                Text("University")
                                    .font(.title2)
                                // .offset(x:-110, y:70)
                                    .fontWeight(.bold)
                                    .frame(width: nil)
                                    .fontWidth(.standard) .foregroundColor(Color(red: 0.31, green: 0.38823529411764707, blue: 0.403921568627451))
                                Spacer()
                                
                                
                                Image(systemName: "pencil.circle.fill")
                                    .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.564))
                                    .font(.system(size: 29))// استخدمها لتحكم في الحجم
                                
                            }.padding()
                            
                            ZStack(alignment: .leading){
                                RoundedRectangle(cornerRadius: /*@PLACEHOLDER=Corner Radius@*/10.0)
                                    .frame(width: 349.0, height: 50.0)
                                    .foregroundColor(Color(red: 0.9529411764705882, green: 0.9529411764705882, blue: 0.9529411764705882, opacity: 0.92))
                                //.offset(x:-10, y:70)
                                
                                //     Spacer()
                                
                                
                                TextField("King Saud University", text: $M)
                                 
                                    .font(.subheadline)
                                    .padding()
                                // .multilineTextAlignment(.center)
                                //  .offset(x:-100 , y:-490)// استخدامها لتحكم في الحركه فوق او تحت
                                
                                
                                
                            }
            
                            
                                VStack{
                                    
                                    Bank_info_card().padding(.top)
                                    Spacer().frame(height:50)
                                    
                                    
                                    
                                    HStack{
                                        
                                        
                                        Text("Bank Account Info ")
                                            .font(.system(size: 21))
                                            .fontWeight(.semibold)
                                            .padding(.bottom,28)
                                        
                                        Spacer()
                                        
                                    }
                                    
                                    Spacer()
                                        .frame(height:25)
                                    if(!rAppInfo.cardInfo.newCardAdded){
                                        Button(action: { self.isShowingPopover=true }, label: {Text(Image(systemName: "plus.square.fill.on.square.fill"))
                                                .font(.largeTitle)
                                                .foregroundColor(.black)
                                                .frame(width: 350, height: 100)
                                                .background(Color(red: 0.973, green: 0.993, blue: 0.919))
                                            .cornerRadius(15)}
                                        ).popover(isPresented: $isShowingPopover) {
                                            
                                            ReachApp.rPopUpView(
                                                rAppInfo : rAppInfo
                                            )
                                        }
                                        
                                    }
                                   
                                    
                                    if(rAppInfo.cardInfo.newCardAdded){
                                        Card(rAppInfo: rAppInfo).offset(x:0,y:30)
                                    }
                                    
                                    
                                    Spacer()
                                    Spacer()
                                    
                                }
                        }.padding()
      
                        
                        
    }
  
    
}





struct ResearcherProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ResearcherProfileView()
    }
}
