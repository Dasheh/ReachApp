//
//  Card.swift
//  SwiftsM
//
//  Created by mashael on 21/01/1445 AH.
//

import SwiftUI

struct Card: View {
    @ObservedObject var rAppInfo : ResearcherBankModelView

    var body: some View {
        
        VStack{
            Spacer()
            Spacer()
         
          
            
            
            ZStack(){
            
            
                
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .frame(width:350.0,height: 105.0)
                
                RoundedRectangle(cornerRadius: 8).strokeBorder(Color(red: 0.31, green: 0.387, blue:0.39),lineWidth: 2)
                
               
                
                Text(rAppInfo.cardInfo.CardHolderName).font(.system(size : 19)).fontWeight(.medium)
                    .foregroundColor(.black)
                    .padding(.top,-28)
               
                let
                index=rAppInfo.cardInfo.CardNumber
                    .index(rAppInfo.cardInfo.CardNumber
                        .endIndex,offsetBy:-4)
                let substr =
                rAppInfo.cardInfo.CardNumber[index...]
                HStack{
                    Text("xxxx xxxx xxxx ")
                        .font(.system(size : 15))
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                        .padding(.top, 30)
                    Text(substr)
                        .font(.system(size : 15))
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                        .padding(.top, 30)
                    
                    
                }
                
                
                
                Image(systemName: "creditcard.fill")
                    .font(.system(size : 30))
                    .fontWeight(.medium)
                    .position(x:35 , y:40)
                    .foregroundColor(Color(hue: 0.505, saturation: 0.421, brightness: 0.583))
                
                
                
                Image("visa logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .position(x:305 , y:40)
                
                
            }
            
            Spacer()
            
            Spacer()
            
          
            
            Spacer()
            
            
            Spacer()
            
            
            Spacer()
            Spacer()
            
            
            
              
            
        }
        
        .frame(width:350.0,height: 105.0)
        
   
        
    }
}




//struct Card_Previews: PreviewProvider {
//    static var previews: some View {
//        Card()
//    }
//}
