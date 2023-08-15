//
//  rPopupView.swift
//  ReachApp
//
//  Created by Danah Alshehri on 27/01/1445 AH.
//

import Foundation
import SwiftUI

struct rPopUpView: View {
    @ObservedObject var rAppInfo : ResearcherBankModelView
    @Environment(\.dismiss) private var dismiss
   
    var body: some View {
        VStack(alignment: .leading){
            Spacer().frame(height:50)
            HStack{
                Text("  Card Number")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                Spacer().frame(width:80)
                Image("payment logos")
                    .resizable()
                    .scaledToFit().frame(width:150)
            }
            HStack{
                Spacer().frame(width:15,height:1)
                TextField("1234 5678 ",text:$rAppInfo.cardInfo.CardNumber)
                    .frame(width:325, height: 25, alignment : .center)
                    .padding()
                    .cornerRadius(10)
                    .background(Color(red: 0.954, green: 0.949, blue: 0.949))
                    .border(Color(red: 0.954, green: 0.949, blue: 0.949)).background(.white).cornerRadius(20)
                
            }
            
            Text("  Card Holder Name")
                .font(.title2)
                .multilineTextAlignment(.leading)
            HStack{
                Spacer().frame(width:15)
                TextField("Rana Abdullah",text:$rAppInfo.cardInfo.CardHolderName)
                .frame(width: 325, height: 25, alignment: .center)
                .padding()
                .cornerRadius(10)
                .background(Color(red: 0.954, green: 0.949, blue: 0.949))
                .border(Color(red: 0.954, green: 0.949, blue: 0.949))
                .background(.white)
                .cornerRadius(20)
        }
            Text("  Card Expiry Date")
                .font(.title2)
            DatePicker("", selection:$rAppInfo.cardInfo.CardExpiryDate, displayedComponents: [.date])
                .padding(.leading, 20.0)
                .datePickerStyle(.wheel)
                .labelsHidden()
            HStack{
                Spacer().frame(width:15)
                Text("CVV").font(.title2)
            }
            HStack{
                Spacer().frame(width:15)
                TextField("CVV",text:$rAppInfo.cardInfo.CVV)
                    .frame(width: 150,height: 50, alignment: .center)
                    .cornerRadius(10)
                    .background(Color(red: 0.954, green: 0.949, blue: 0.949))
                    .border(Color(red: 0.954, green: 0.949, blue: 0.949)).background(.white).cornerRadius(20)
                .padding(.leading,0)
                Spacer()
                Button( action: {rAppInfo.cardInfo.newCardAdded=true;self.dismiss()}){
                    Text("Add new Card")
                   
                }
                .frame(width: 150.0, height: 50.0).background(Color.black).foregroundColor(Color.white)
                    .cornerRadius(15)
                Spacer().frame(width: 15)
            
                
            }
            Spacer().frame(height:50)
            
            
        }.padding(.trailing,0.0)
            .frame(width: 392.0, height: 700.0)
            
            .cornerRadius(5)
       
    }
}
