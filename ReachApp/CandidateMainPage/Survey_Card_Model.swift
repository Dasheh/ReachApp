//
//  Survey_Card_Model.swift
//  Reach
//
//  Created by SarahAldakhil on 15/01/1445 AH.
//

import Foundation


class Survey_Card_Model : Identifiable, ObservableObject {
    // Somthing to be compaierd apone 
   
    var id: UUID
    var id_Survey : String = UUID().uuidString
    var link : String
    var title: String
    var discreption: String
    var numOfResponese : Int
    var price: Int
    var Reserchername : String
    // the selection set of data
    let gender : String
    let min_age: String
    let max_age: String
    let place: String
    let sector :String
    let incomes: String
    let martial: String
    
    
  
//    The constrctor is for the survey object to save the Data
    
    init(id: UUID,Reserchername : String , link : String, title: String, discreption: String, price : Int, numOfResponese : Int, min_age: String,max_age:String,incomes:String,sector:String,place:String,martial : String, gender:String) {
            self.link = link
            self.title = title
            self.discreption = discreption
            self.price = price
            self.numOfResponese = numOfResponese
            self.Reserchername = Reserchername
            self.id = UUID()
            self.min_age =  min_age
            self.max_age = max_age
            self.incomes = incomes
            self.sector = sector
            self.place = place
            self.martial = martial
            self.gender = gender
            
            
        }
    
    
     
    }



//extension Survey_Card_Model  {
//    public static var sampleData: [Survey_Card_Model] =
//    [
//        Survey_Card_Model(id : UUID(), Reserchername : "Mohemmd Nasser",link:"https://forms.gle/ewa97zAxkTuUSFMp8",title: "Scoping Review of Population-Based Physical Activity  and Sedentary Behavior in Saudi Arabia", discreption: "This review systematically summarized population levels of physical activity (PA)/sedentary behavior (SB) in Saudi Arabia.", price: 15,numOfResponese:150,min_age: "22",max_age:"39",incomes:"6000-8000",sector:"Private Sector",place:"Riyadh",martial : "Married",gender:"Male"),
//
//        Survey_Card_Model(id : UUID(), Reserchername :"Amal Ali",link:"https://forms.gle/cb7spyR9DyM3LNMY7",title: "Factors affecting performance of hospital nurses in Riyadh Region", discreption: "The purpose is to identify factors influencing performance of hospital nurses in Riyadh Region, Saudi Arabia.", price: 20, numOfResponese: 200,min_age: "24",max_age:"30",incomes:"4000-6000",sector:"Healthcare & Life Sciences",place:"Riyadh",martial : "Single",gender:"Female"),
//
//        Survey_Card_Model(id : UUID(), Reserchername :"Amal Ali", link:"https://forms.gle/yHkvLsMathVxkCJt6",title: "Knowledge and Risk Factors Regarding Type 2 Diabetes among Saudi Population in Jeddah", discreption: "This study aimed to assess the level of knowledge and awareness of type 2 diabetes among diabetic and non–diabetic persons in Jeddah region", price: 10, numOfResponese : 30, min_age: "25",max_age:"40",incomes:"2000-4000",sector:"Healthcare & Life Sciences",place:"Jeddah",martial : "Single",gender:"Male"),
//
//        Survey_Card_Model(id : UUID(), Reserchername : "Mohemmd Nasser" ,link:"https://forms.gle/zza9toS9iREz2xDE8",title: "Attitudes of female students at Universities towards the Kingdom of Saudi Arabia vision 2030", discreption: "This study aimes to identify the Female university students responce", price: 15, numOfResponese :10,min_age: "22",max_age:"25",incomes:"850-2000",sector:"Healthcare & Life Sciences",place:"Riyadh",martial : "Single",gender:"Female")
//
//
//    ]
//}



