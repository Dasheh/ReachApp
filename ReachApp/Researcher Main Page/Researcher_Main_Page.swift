//
//  Researcher_Main_Page.swift
//  Reach
//
//  Created by SarahAldakhil on 16/01/1445 AH.
//

import SwiftUI


// The Main View for the Researcher ********************

struct Researcher_Main_Page: View {
//
    
    @State private var showingSheet = false
    @State private var showingDetail = false
    public var Researcher : Researcher_Data_Model
    // this is to save Researcher survey
    public var User_Surveys : Survey_Card_Model
    
    @StateObject var viewModel = CounterViewModel()
    
    
    var body: some View  {
         NavigationView{
            
            Color(red: 0.49411764705882355, green: 0.6196078431372549, blue: 0.6235294117647059, opacity: 100.0)
                .ignoresSafeArea()
                .overlay(
                    VStack(spacing : 5){
                        Text("Hey").fontWeight(.bold).font(.system(size: 40)).offset(x:-130,y : 35).foregroundColor(.white).navigationBarBackButtonHidden(true)
                        
                        Text("\(Researcher.FullName)").fontWeight(.semibold).font(.system(size: 25)).lineLimit(1).frame(maxWidth:320.0,alignment: .leading).padding(.top,1).foregroundColor(.white).offset(x:-6,y : 35)
                        
                                
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 47).fill(.white).frame(width: 390,alignment: .center).padding(.bottom,-50).padding(.top,30)
                                
                                Text("Your Surveys").fontWeight(.semibold).font(.title).padding(.leading,-143).foregroundColor(Color(red: 0.30980392156862746, green: 0.38823529411764707, blue: 0.38823529411764707, opacity: 100.0))
                                    .offset(x:-10,y:-225).padding(.bottom,10)
                              
                                
                         VStack{
                            ScrollView(.vertical){
                                LazyVStack (spacing :10){
                                    // Add Survey button for the Resercher
                                    
                                    NavigationLink(destination: { AddSurvey_p1()}
                                    ,  label: {
                                  
                                        Text(Image(systemName: "plus.square.fill.on.square.fill"))
                                            .font(.system (size:28))
                                            .foregroundColor(Color(red: 0.16470588235294117, green: 0.22745098039215686, blue: 0.22745098039215686, opacity: 100.0)
                                                    )
                                            .frame(width:324, height: 83).background(Color(red: 0.8274509803921568, green: 0.9294117647058824,blue: 0.9294117647058824, opacity: 100)).cornerRadius(8)
                                                
                                    })
                                    
                                    ForEach(viewModel.sampleData.filter{ $0.Reserchername == Researcher.FullName }) { count in
                                                Button(action: {
                                                    showingSheet.toggle()
                                                }, label: {
                                                    CardView2(survey: count)
                                                    .foregroundColor(.black)
                                                    .multilineTextAlignment(.leading)
                                                
                                                }).sheet(isPresented: $showingSheet) {
                                                    Edit_Survey( theSurvey : count)
                                                        .environmentObject(viewModel)
                                                }

                                                
                                                
                                            }
                                        }
                            // The Scroll View Bracket
                            }.frame(maxHeight:489).offset(y:45)

                            
                        }
                                
                }.padding()
                      
                        
                    })
                }
        
//         .onChange(of: viewModel.sampleData) { newValue in
//             ForEach(viewModel.sampleData.filter{ $0.Reserchername == Researcher.FullName }) { count in
//                 Button(action: {
//                     showingSheet.toggle()
//                 }, label: {
//                     CardView2(survey: count)
//                         .foregroundColor(.black)
//                         .multilineTextAlignment(.leading)
//
//                 }).onChange(of: viewModel.sampleData){newValue in
//                     CardView2(survey: count)
//                         .foregroundColor(.black)
//                         .multilineTextAlignment(.leading)
//
//                 }.sheet(isPresented: $showingSheet) {
//                     Edit_Survey( theSurvey : count)
//
//                 }
//
//
//
//             }
             
         }
        
        
            }
      
                    
                    
//                    struct Researcher_Main_Page_Previews: PreviewProvider {
//                        static var r = Researcher_Data_Model.sampleData_Researcher[0]
//                        static var u = Survey_Card_Model.sampleData[0]
//                        var o: [String]
//                        static var previews: some View {
//                            Researcher_Main_Page(values:o, Researcher: r, User_Surveys: u )
//                        }
//                    }
                    
                    
