//
//  CardView2.swift
//  Reach
//
//  Created by SarahAldakhil on 16/01/1445 AH.
//

import SwiftUI

//** Reasearcher CardView in Main Page ****************************************
struct CardView2: View {
    public var survey: Survey_Card_Model
    var body: some View {
        
        
        ZStack(){
            RoundedRectangle(cornerRadius: 8)
                .fill(.white)
            
            RoundedRectangle(cornerRadius: 8).strokeBorder(Color(red: 0.31, green: 0.387, blue:0.39),lineWidth: 2)
            
            VStack(spacing: 9){
                HStack{
                    
                        Text(survey.title).font(.system(size: 14.5))
                        .fontWeight(.bold).foregroundColor(Color(white: 0.31))
                        .lineLimit(3)
                        .padding(.top,6)
                        
                        .frame(maxWidth: 250.50)
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }.padding(.bottom, 2.0)
                
//                Spacer(minLength : 1)
               
             
                HStack{
                    Text(survey.discreption)
                        .font(.caption)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                        .frame(maxWidth: 283)
                    Spacer()
                }
              Spacer()
                
            }.padding()
            
            
                    VStack{
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        HStack{
                                    Spacer()
                            Image(systemName: "pencil.circle.fill").foregroundColor(Color(red: 1, green: 0.5450980392156862, blue: 0.5137254901960784, opacity: 1.0))
                                .font(.system (size :30)).padding(.trailing,7).padding(.bottom,-7)

                                   
                    }
                        
                      Spacer()
            }
               
        }.frame(width:324,height: 195.0)
          
    }
}


//struct CardView2_Previews: PreviewProvider {
//    
//    static var s = Survey_Card_Model.sampleData[0]
////    static var Survey = Survey_Card_Model.sampleData
//    static var previews: some View {
//                    CardView2(survey: s)
//                            }
//        }
        
        
