//
//  CandidateProfileModel.swift
//  Candidate profile
//
//  Created by Danah Alshehri on 22/01/1445 AH.
//

import SwiftUI


class CandidateProfileModel : ObservableObject {
    var newCardAdded : Bool = false
    var CardNumber : String = "eg 1234 5678 9123 4567"
    var CardHolderName : String = "FirstName LastName"
    var CardExpiryDate : Date = Date()
    var CVV : String = " eg 123"
}
