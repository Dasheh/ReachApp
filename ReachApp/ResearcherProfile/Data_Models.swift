//
//  Data_Models.swift
//  SwiftsM
//
//  Created by mashael on 21/01/1445 AH.
//

import Foundation

struct Data_Models {
    
      var id_Researcher : String = UUID().uuidString
      var FullName: String
      var University : String
   
    
      init( FullName: String,  University : String) {
          self.FullName = FullName
          self.University = University
        }
      }

  extension Data_Models{
      
      public static var sampleData_Researcher: [Data_Models] =
      [
        
        Data_Models(FullName: "Mohemmd Nasser", University: "King Khaled University"),
          
        Data_Models(FullName: "Amal Ali", University: "Al-Imam Mohmmed Ibn Saud Isalmic University"),
          
        Data_Models(FullName: "Sarah Abdullah", University: "King Abdulaziz University"),
          
        Data_Models(FullName: "Mashael Ali", University: "King Saud University"),

      ]
  } 
