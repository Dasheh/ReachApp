//
//  IDmodel.swift
//  Reach
//
//  Created by Fay Hussain on 22/01/1445 AH.
//
//

struct Researcher_Data_Model {
    var id_Researcher: String
    var FullName: String
    var University: String
    
    init(id_Researcher: String, FullName: String, University: String) {
        self.id_Researcher = id_Researcher
        self.FullName = FullName
        self.University = University
    }
}

extension Researcher_Data_Model {
    public static var sampleData_Researcher: [Researcher_Data_Model] = [
        Researcher_Data_Model(id_Researcher: "1111111111", FullName: "Mohemmd Nasser", University: "King Khaled University"),
        Researcher_Data_Model(id_Researcher: "2222222222", FullName: "Amal Ali", University: "Al-Imam Mohmmed Ibn Saud Isalmic University"),
        Researcher_Data_Model(id_Researcher: "3333333333", FullName: "Sarah Abdullah", University: "King Abdulaziz University"),
        Researcher_Data_Model(id_Researcher: "4444444444", FullName: "Nora Ahmed", University: "King Saud University")
    ]
}

struct Candidate_Data_Model {
    var id_Candidate: String
    var FullName: String
    var Age: String
    var Gender: String
    var Income: String
    var Sector: String
    var Place: String
    var MaritalStatus: String
    
    init(id_Candidate: String, FullName: String, Age: String, Gender: String, Income: String, Sector: String, Place: String, MaritalStatus: String) {
        self.id_Candidate = id_Candidate
        self.FullName = FullName
        self.Age = Age
        self.Gender = Gender
        self.Income = Income
        self.Sector = Sector
        self.Place = Place
        self.MaritalStatus = MaritalStatus
    }
}

extension Candidate_Data_Model {
    public static var sampleData_Candidate: [Candidate_Data_Model] = [
        Candidate_Data_Model(id_Candidate: "5555555555", FullName: "Norah Saleh", Age: "22", Gender: "Female", Income: "850-2000", Sector: "Student", Place: "Riyadh", MaritalStatus: "Single"),
        Candidate_Data_Model(id_Candidate: "6666666666", FullName: "Rana Abdullah", Age: "23", Gender: "Female", Income: "850-2000", Sector: "Student", Place: "Hail", MaritalStatus: "Married"),
        Candidate_Data_Model(id_Candidate: "7777777777", FullName: "Mohmmed Nasser", Age: "35", Gender: "Male", Income: "2500-5000", Sector: "Health", Place: "Al-Qassim", MaritalStatus: "Married"),
        Candidate_Data_Model(id_Candidate: "8888888888", FullName: "Abdullah Ali", Age: "27", Gender: "Male", Income: "5500-12,000", Sector: "Technology", Place: "Eastern Province", MaritalStatus: "Single")
    ]
}

//import Foundation
//
//struct IDmodel{
//
//    var ID = ["1234567890","1112865428","1111111111"]
//}
