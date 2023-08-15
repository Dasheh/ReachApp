//
//  ResearcherBankModel.swift
//  SwiftsM
//
//  Created by mashael on 27/01/1445 AH.
//

import Foundation
class ResearcherBankModel: ObservableObject {
    @Published var newCardAdded :Bool = false
    @Published var CardNumber: String = "eg 1234 5678 1234 5678"
    @Published var CardHolderName : String = "FirstName LastName"
    @Published var CardExpiryDate : Date = Date()
    @Published var CVV : String = "eg 123"
}
