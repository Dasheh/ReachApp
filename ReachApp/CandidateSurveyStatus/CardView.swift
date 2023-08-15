//
//  CardView.swift
//  Reach
//
//  Created by SarahAldakhil on 15/01/1445 AH.
//

import SwiftUI

//** Candidate CardView in Main Page ******************************************
struct CardView: View {
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
                        .lineLimit(1...3)
                        .padding(.top,6)
                        
                        
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
                        .lineLimit(1...3)
                       
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
                        
                        HStack(spacing: 10){
                           Spacer()
                           Spacer()
                           Spacer()
                           Spacer()
                           Spacer()
                        
                            ZStack{
                                Group(content:{
                                    
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 79.0, height: 26.0)
                                        .foregroundColor(Color(red: 0.9333333333333333, green: 0.9607843137254902, blue: 0.8588235294117647))
                                    
                                    Text("\(survey.price) SAR").font(.caption).fontWeight(.bold).foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.39))
                                    
                                })
                                
                            }.padding(.trailing,-35).padding(.bottom,-10)
                         Spacer()
                    }
                        ZStack{
                            Group(content:{
                                
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 90.0, height: 26.0)
                                    .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402, opacity: 1.0))
                                
                                
                                
                                
                                
                                Text("Under Review").font(.caption).fontWeight(.bold).foregroundColor(.white)
                                
                            })
                            
                        }.padding(.trailing,-35).padding(.bottom,-10).offset(x:90,y:5)
                        
                      Spacer()
            }
               
        }.frame(width:324,height: 195.0)
    }
}


//struct CardView_Previews: PreviewProvider {
//    
//    static var s = Survey_Card_Model.sampleData[2]
////    static var Survey = Survey_Card_Model.sampleData
//    static var previews: some View {
//                    CardView(survey: s)
//                            }
//        }
//        
        
        
        
    

