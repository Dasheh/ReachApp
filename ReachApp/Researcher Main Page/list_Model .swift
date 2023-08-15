//
//  lists_model.swift
//  Reach
//
//  Created by Hatun Alshkrah on 21/01/1445 AH.
//

import Foundation


// this is for the drop-down lists
struct myLists {
    
    let gender = ["Female", "Male" , "Mixed Sample"]
    let min_age = ["20","25","30","35","40","45","50","55","60"]
    let max_age = ["25","30","35","40","45","50","55","60"]
    let place = ["Riyadh","Eastern Province","Makkah Al-Mukarramah","Medina",
                         "Tabuk","Najran","Jazan","Al-Baha","Northern Borders","Al-Jawf"
                         ,"Hail","Al-Qassim","Asir"]
    
    let sector = ["Healthcare & Life Sciences","Innovation","Social"
                         ,"Chemical industries","Education","Commerce","Computer Science"
                         ,"Information Technology","Goverment Sector","Private Sector"]
    
    let incomes = ["850-2000","2000-4000","4000-6000","6000-8000","8000-10,000","10,000-12,000"]
    
    let martial = ["Married", "Single","Divorced","Widowed"]
    
}



class Selection: ObservableObject, Identifiable {
    
    
    @Published var values: [String] = [] //this is for storing the selections in an array
    let id = UUID()
    @Published var min_age: String
    @Published var max_age: String
    @Published var incomes: String
    @Published var sector: String
    @Published var place: String
    @Published var status: String
    @Published var gender: String
    
    init() {
        self.min_age = ""
        self.max_age = ""
        self.incomes = ""
        self.sector = ""
        self.place = ""
        self.status = ""
        self.gender = ""
    }
}
class SurveyData: ObservableObject{
    let id = UUID()
    @Published var surveyLink: String = ""
    @Published var researchSub: String = ""
    @Published var describtion: String = ""
    @Published var responses: String = ""
    @Published var costs: String = ""
    var surveyDataArray = [SurveyData]()
   
    // this function adds the survey data to the array
    func addSurveyDataToSurveyDataArray() {
          let newSurveyData = SurveyData()
          newSurveyData.surveyLink = surveyLink
          newSurveyData.researchSub = researchSub
          newSurveyData.describtion = describtion
          newSurveyData.responses = responses
          newSurveyData.costs = costs
          surveyDataArray.append(newSurveyData)
      }
  
}

