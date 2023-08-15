//
//  CandidateSurveyStatus.swift
//  ReachApp
//
//  Created by Danah Alshehri on 26/01/1445 AH.
//

import SwiftUI

struct CandidateSurveyStatus: View {
    @StateObject var viewModel = CounterViewModel()
    public var Candidate : Candidate_Data_Model
        public var survey_link : Survey_Card_Model
        var body: some View {
          
            VStack(spacing : 5){
                
                Text("My \n Participations").fontWeight(.semibold).font(.system(size: 25)).lineLimit(2).frame(maxWidth:320.0,alignment: .leading).padding(.top,1).offset(x:-6,y:0)
                
                ZStack{
                
                    RoundedRectangle(cornerRadius: 47).fill( Color(red: 1.001, green: 0.701, blue: 0.682, opacity: 1.0) ).frame(width:390,height:550,alignment: .center).padding(.top,25)
                    
                    
                 
                    VStack{
                    ScrollView(.vertical){
                        LazyVStack (spacing :7){
                            ForEach(viewModel.sampleData.indices, id:\.self) { count in
                                Link(destination: URL(string :viewModel.sampleData[count].link)!,
                                 label: {
                                  CardView(survey :viewModel.sampleData[count])
                                   .foregroundColor(.black)
                                   .multilineTextAlignment(.leading)
                                   })
                            }
                        }
                        
                    }.offset(y:25).frame(maxHeight:500)
                    }.padding(.bottom,25)
                   
                }

            }.padding()
        }
}

//struct CandidateSurveyStatus_Previews: PreviewProvider {
//    static var previews: some View {
//        CandidateSurveyStatus(Candidate: Candidate_Data_Model.sampleData_Candidate[0], survey_link: Survey_Card_Model.sampleData[0])
//    }
//}
