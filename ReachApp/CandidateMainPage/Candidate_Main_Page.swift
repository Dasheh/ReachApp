//
//  Candidate_Main_Page.swift
//  Reach
//
//  Created by SarahAldakhil on 15/01/1445 AH.
//

import SwiftUI




// The Main View for the Candidate  ***********************

struct Candidate_Main_Page: View {
    
    @StateObject var viewModel = CounterViewModel()
    public var Candidate : Candidate_Data_Model
    public var survey_1 : Survey_Card_Model
   
    
    var body: some View {
      
        VStack(spacing : 5){
            
            Text("Hey").fontWeight(.bold).font(.system(size: 40)).offset(x:-130,y : 35)
            
            Text("\(Candidate.FullName)").fontWeight(.semibold).font(.system(size: 25)).lineLimit(1).frame(maxWidth:320.0,alignment: .leading).padding(.top,1).offset(x:-6,y : 35)
            
            ZStack{
            
                RoundedRectangle(cornerRadius: 47).fill(Color(red: 0.722, green: 0.8470588235294118, blue: 0.8470588235294118, opacity: 0.600)).frame(width: 390,alignment: .center).padding(.bottom,-50).padding(.top,60)
                
                Text("Your Matches").fontWeight(.semibold).font(.title).padding(.leading,-143).foregroundColor(Color(red: 0.30980392156862746, green: 0.38823529411764707, blue: 0.38823529411764707, opacity: 100.0))
                    .offset(x:-6,y:-190)
                
                VStack{
                ScrollView(.vertical){
                    LazyVStack (spacing :7){
                        ForEach(viewModel.sampleData.filter { $0.gender == Candidate.Gender && $0.place == Candidate.Place && $0.martial == Candidate.MaritalStatus && $0.min_age...$0.max_age ~= Candidate.Age && $0.incomes == Candidate.Income && $0.sector == Candidate.Sector }) { survey in
                            Link(destination: URL(string: survey.link)!) {
                                CardView(survey: survey)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                    }
                    
                }.offset(y:85).frame(maxHeight:489)
             }
               
            }

        }.padding()
    }
}

//struct Candidate_Main_Page_Previews: PreviewProvider {
////    static var c = Candidate_Data_Model.sampleData_Candidate
//    static var s = CounterViewModel().sampleData
//
//    static var previews: some View {
//        Candidate_Main_Page( Candidate: Candidate_Data_Model.sampleData_Candidate[0], survey_1: Survey_Card_Model.sampleData[0])
//    }
//}
