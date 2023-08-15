//
//  rMainView.swift
//  ReachApp
//
//  Created by Danah Alshehri on 27/01/1445 AH.
//

import SwiftUI

struct rMainView: View {
    @State var rID : String
    var body: some View {
        TabView{
            ResearcherProfileView().tabItem{
                Label("Profile",systemImage:"person.crop.circle")
            }
            Researcher_Main_Page(Researcher:Researcher_Data_Model.sampleData_Researcher[1],User_Surveys:CounterViewModel().sampleData[1]).tabItem{
                Label("Surveys",systemImage:"newspaper.fill" )
            }
            
            
        }
    }
}

struct rMainView_Previews: PreviewProvider {
    static var previews: some View {
        rMainView(rID: "")
    }
}
