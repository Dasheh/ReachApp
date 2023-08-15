//
//  cMainView.swift
//  ReachApp
//
//  Created by Danah Alshehri on 27/01/1445 AH.
//

import SwiftUI

struct cMainView: View {
    @State var cID : String
    @StateObject var viewModel = CounterViewModel()
    var body: some View {
        TabView{
            CandidateProfile(Candidate: Candidate_Data_Model.sampleData_Candidate[0]).tabItem{
                Label("Profile",systemImage:"person.crop.circle")
            }
            
            
            CandidateSurveyStatus(Candidate: Candidate_Data_Model.sampleData_Candidate[2],survey_link:viewModel.sampleData[3]).tabItem{
                Label("Participations",systemImage: "person.wave.2.fill")
            }
            
            Candidate_Main_Page(Candidate: Candidate_Data_Model.sampleData_Candidate[2],survey_1:viewModel.sampleData[3]).tabItem{
                Label("Surveys",systemImage: "newspaper.fill")
            }
        }
    }}
//struct cMainView_Previews: PreviewProvider {
//    static var previews: some View {
//        cMainView()
//    }
//}
