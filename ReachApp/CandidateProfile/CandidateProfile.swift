//
//  CandidateProfile.swift
//  ReachApp
//
//  Created by Danah Alshehri on 27/01/1445 AH.
//

import Foundation
import SwiftUI
struct CandidateProfile: View {
    @StateObject var appInfo = CandidateProfileModelView()
    @State private var isShowingPopover = false
    var  Candidate :Candidate_Data_Model
    var body: some View {
        
        VStack{
            Spacer().frame(height:100)
            HStack{
                
                ZStack{
                    
                    Circle().fill(Color(red: 0.999, green: 0.833, blue: 0.823))
                        .frame(width:60,height:60, alignment: .center)
                    
                    Text("N").font(.title2).foregroundColor(Color(red: 1.001, green: 0.546, blue: 0.513, opacity: 1.0))
                        
                }
                
                
                Text(Candidate.FullName).font(.title).foregroundColor(Color.black).multilineTextAlignment(.leading)
                Spacer().frame(width:120)
            }
            Spacer()
            
                .frame(width: 0.0, height: 75.0)
            HStack{
                Text("Bank Account Information")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .padding(.top, -50)
                Spacer().frame(width:75)
            }
            VStack{
                
                
                ZStack{
                    if(!appInfo.cardInfo.newCardAdded){
                        Button(action: { self.isShowingPopover=true }, label: {Text(Image(systemName: "plus.square.fill.on.square.fill"))
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .frame(width: 375.0, height: 100)
                                .background(Color(red: 0.973, green: 0.993, blue: 0.919))
                                .cornerRadius(15)
                            
                            
                        }
                        ).popover(isPresented: $isShowingPopover) {
                            
                            ReachApp.PopUpView(
                                appInfo : appInfo
                            )
                        }
                        
                    }
                    else {
                        ZStack{
                            RoundedRectangle(cornerRadius:8).strokeBorder(Color(.black),lineWidth: 2)
                                .frame(width:375,height:100)
                            
                            
                            
                            HStack{
                                Spacer().frame(width: 25)
                                Image(systemName: "creditcard.fill")
                                    .font(.system(size: 50))
                                    .foregroundColor(Color(red: 0.728, green: 0.849, blue: 0.853))
                                    .frame(width: 50.0)
                                
                                Spacer().frame(width: 25)
                                
                                VStack(alignment: .leading){
                                    Spacer().frame(height:300)
                                    HStack(spacing: 30){
                                        Text(appInfo.cardInfo.CardHolderName)
                                            .font(.body)
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.leading)
                                        
                                        
                                        Image("visa logo")
                                            .resizable()
                                            .scaledToFit().frame(width:60)
                                    }
                                    Spacer()
                                    HStack{
                                        let index=appInfo.cardInfo.CardNumber.index(appInfo.cardInfo.CardNumber.endIndex,offsetBy:-4)
                                        let substr = appInfo.cardInfo.CardNumber[index...]
                                        Text("xxxx xxxx xxxx ")
                                            .frame(width:150)
                                            .position(x:60,y:10)
                                        Spacer().frame(width:25)
                                        Text(substr)
                                            .position(x:25,y:10)
                                        Spacer().frame(height:200)
                                        
                                        
                                    }
                                    Spacer().frame(height:125)
                                    
                                }
                                
                                
                            }
                        }
                        
                    }
                    
                }.frame(width:400,height:100)
            }
            Spacer().frame(width:10,height:10,alignment: .center)
            HStack(alignment: .center){
                
                
                ZStack{
                    Text("77 sar ").font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 180,height: 250)
                        .background(Color(red: 0.995, green: 0.685, blue: 0.666))
                        .cornerRadius(15).offset(x:10)
                    
                    Text("in earnings").fontWeight(.medium).offset(x:10,y:30).foregroundColor(Color.white)
                    
                    
                }
                Spacer().frame(width:35)
                ZStack{
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 180,height: 250)
                        .background(Color(red: 0.726, green: 0.847, blue: 0.849))
                        .cornerRadius(15).offset(x:-10)
                    
                    Text("surveys").fontWeight(.medium).offset(x:-10,y:30).foregroundColor(Color.white)
                }
                
                
                
                
                
                
            }
            
            Spacer().frame(height:200)
            
        }.environmentObject(appInfo)
        
        
        
    }
    
    
}
//struct CandidateProfile_Previews: PreviewProvider {
//  static var previews: some View {
//     CandidateProfile()
//            
//    }
//}
