//
//  Researcher_Data _Model .swift
//  Reach
//
//  Created by SarahAldakhil on 20/01/1445 AH.
//

import Foundation


struct Researcher_Data_Model {
  
    var id_Researcher : String = UUID().uuidString
    var FullName: String
    var University : String
   
    
    init( FullName: String,  University : String) {
        self.FullName = FullName
        self.University = University
      }
    
    
    }


extension Researcher_Data_Model  {
    public static var sampleData_Researcher: [Researcher_Data_Model] =
    [
        Researcher_Data_Model(FullName: "Mohemmd Nasser", University: "King Khaled University"),
        
        Researcher_Data_Model(FullName: "Amal Ali", University: "Al-Imam Mohmmed Ibn Saud Isalmic University"),
        
        Researcher_Data_Model(FullName: "Sarah Abdullah", University: "King Abdulaziz University"),
        
        Researcher_Data_Model(FullName: "Nora Ahmed", University: "King Saud University"),

    ]
}
