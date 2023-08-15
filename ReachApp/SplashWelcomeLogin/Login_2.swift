//
//  Login_2.swift
//  ReachApp
//
//  Created by Danah Alshehri on 28/01/1445 AH.
//

import SwiftUI

struct Login_2: View {
    
    @State private var ID = ""
    @State private var errorMessage = ""
//    @Binding var CandidateOrResearcher: String
//    @State public var UserType :String
    
    var body: some View {
       
//        NavigationView {
            
            VStack {
                //...other views
                VStack {
                    VStack {
                        Image("ReachLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Spacer()
                    }
                    VStack {
                        Text("Sign Up / Login")
                            .font(.title2)
                            .bold()
                            .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 0.941, green: 0.929, blue: 0.929, opacity: 0.898))
                            .frame(height: 50)
                        HStack {
                            Spacer()
                            
                            TextField("National ID", text: $ID)
                                .onChange(of: ID) { newValue in
                                    // limit input to 10 digits
                                    if newValue.count > 10 {
                                        ID = String(newValue.prefix(10))
                                    }
                                    // check for non-numeric characters
                                    if newValue.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) != nil {
                                        errorMessage = "Please enter numeric characters only"
                                    } else {
                                        errorMessage = ""
                                    }
                                }
                                .padding(.horizontal)
                                .keyboardType(.numberPad) // use the .numberPad keyboard type
                            Spacer()
                        }
                    }
                    
                    if !errorMessage.isEmpty {
                        Text(errorMessage)
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    
                    //...other views
                    HStack{
                        Text(" * Please Make sure of your ID Number")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.009, brightness: 0.443, opacity: 0.723)).font(.system(size: 15))
                        Spacer()
                    }
                    
                    
                  Button(action: {
                     NavigationLink(destination: {
                         cMainView(cID: ID)
                     }, label: {
                         
                     })
                        
                    

                  }, label: {
                      RoundedRectangle(cornerRadius: 20)
                          .frame(height: 50)
                          .foregroundColor(Color(red: 0.223, green: 0.432, blue: 0.481))
                          .overlay(
                              Text("Enter")
                                  .foregroundColor(.white)
                                  .font(.headline)
                          )
                  })
                      
                    }
                    .disabled(ID.count != 10 || ID.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) != nil) // disable button if ID is not exactly 10 digits or contains non-numeric characters
                    
                    
                    Spacer()
                    
                    Image("Nafath")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                    
                    Spacer()
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 200)
                        .foregroundColor(Color(red: 0.945, green: 0.289, blue: 0.323, opacity: 0.87))
                        .offset(x: -UIScreen.main.bounds.width * 0.5, y: -UIScreen.main.bounds.height * 0.8)
                )
                
            }
        
        
        
        
//    }
}

//struct Login_2_Previews: PreviewProvider {
//    static var previews: some View {
//        Login_2()
//    }
//}
