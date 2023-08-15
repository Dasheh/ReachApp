//
//  Bank_info_card.swift
//  SwiftsM
//
//  Created by mashael on 21/01/1445 AH.
//

import SwiftUI

struct Bank_info_card: View {
    var body: some View {
                    ZStack()
                    {
                        
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color(red: 0.451, green: 0.6941176470588235, blue: 0.6941176470588235, opacity: 0.519))
                           
                        
                        Text("5").font(.system(size : 36)).fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.top,-25)
                        Text("Published Surveyes")
                            .font(.system(size : 14))
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .padding(.top, 40)
                    
                    }
                
                    .frame(width:350.0,height: 105.0)
     
                
                
                }
            }




struct Bank_info_card_Previews: PreviewProvider {
    static var previews: some View {
        Bank_info_card()
    }
}
