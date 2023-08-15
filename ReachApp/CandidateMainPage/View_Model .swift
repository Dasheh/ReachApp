//
//  View_Model .swift
//  Reach
//
//  Created by SarahAldakhil on 27/01/1445 AH.
//

import Foundation

// The view - Model that makes an Object out of Survey_Card_ Model into an array
final class CounterViewModel: ObservableObject {

    
    
    @Published public var sampleData : [Survey_Card_Model] =
    [
        Survey_Card_Model(id : UUID(), Reserchername : "Mohemmd Nasser",link:"https://forms.gle/ewa97zAxkTuUSFMp8",title: "Scoping Review of Population-Based Physical Activity  and Sedentary Behavior in Saudi Arabia", discreption: "This review systematically summarized population levels of physical activity (PA)/sedentary behavior (SB) in Saudi Arabia.", price: 15,numOfResponese:150,min_age: "22",max_age:"39",incomes:"6000-8000",sector:"Private Sector",place:"Riyadh",martial : "Married",gender:"Male"),
                   
        Survey_Card_Model(id : UUID(), Reserchername :"Amal Ali",link:"https://forms.gle/cb7spyR9DyM3LNMY7",title: "Factors affecting performance of hospital nurses in Riyadh Region", discreption: "The purpose is to identify factors influencing performance of hospital nurses in Riyadh Region, Saudi Arabia.", price: 20, numOfResponese: 200,min_age: "24",max_age:"30",incomes:"4000-6000",sector:"Healthcare & Life Sciences",place:"Riyadh",martial : "Single",gender:"Female"),
        
        Survey_Card_Model(id : UUID(), Reserchername :"Amal Ali", link:"https://forms.gle/yHkvLsMathVxkCJt6",title: "Knowledge and Risk Factors Regarding Type 2 Diabetes among Saudi Population in Jeddah", discreption: "This study aimed to assess the level of knowledge and awareness of type 2 diabetes among diabetic and non–diabetic persons in Jeddah region", price: 10, numOfResponese : 30, min_age: "25",max_age:"40",incomes:"2000-4000",sector:"Healthcare & Life Sciences",place:"Jeddah",martial : "Single",gender:"Male"),
        
        Survey_Card_Model(id : UUID(), Reserchername : "Mohemmd Nasser" ,link:"https://forms.gle/zza9toS9iREz2xDE8",title: "Attitudes of female students at Universities towards the Kingdom of Saudi Arabia vision 2030", discreption: "This study aimes to identify the Female university students responce", price: 15, numOfResponese :10,min_age: "22",max_age:"25",incomes:"850-2000",sector:"Healthcare & Life Sciences",place:"Riyadh",martial : "Single",gender:"Female")
        
        
    ]
    
    
}

