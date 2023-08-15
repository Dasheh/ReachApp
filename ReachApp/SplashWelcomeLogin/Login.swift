//
//  Login.swift
//  Reach
//
//  Created by Fay Hussain on 15/01/1445 AH.
//
//
//



//
//import SwiftUI
//
//
//struct Login: View {
//    @State private var ID = ""
//    @State private var errorMessage = ""
//    @Binding var CandidateOrResearcher: String
//    @Environment(\.presentationMode) var presentationMode
//
//
//    var body: some View {
//        VStack {
//            //...other views
//            VStack {
//                VStack {
//                    Image("Logo")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                    Spacer()
//                }
//                VStack {
//                    Text("Sign Up / Login")
//                        .font(.title2)
//                        .bold()
//                        .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
//                }
//
//                ZStack {
//                    RoundedRectangle(cornerRadius: 10)
//                        .foregroundColor(Color(red: 0.941, green: 0.929, blue: 0.929, opacity: 0.898))
//                        .frame(height: 50)
//                    HStack {
//                        Spacer()
//                        TextField("National ID", text: $ID)
//                            .onChange(of: ID) { newValue in
//                                // limit input to 10 digits
//                                if newValue.count > 10 {
//                                    ID = String(newValue.prefix(10))
//                                }
//                                // check for non-numeric characters
//                                if newValue.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) != nil {
//                                    errorMessage = "Please enter numeric characters only"
//                                } else {
//                                    errorMessage = ""
//                                }
//                            }
//                            .padding(.horizontal)
//                            .keyboardType(.numberPad) // use the .numberPad keyboard type
//                        Spacer()
//                    }
//                }
//
//                if !errorMessage.isEmpty {
//                    Text(errorMessage)
//                        .foregroundColor(.red)
//                        .font(.caption)
//                }
//
//                //...other views
//                HStack{
//                    Text(" * Please Make sure of your ID Number")
//                        .foregroundColor(Color(hue: 1.0, saturation: 0.009, brightness: 0.443, opacity: 0.723)).font(.system(size: 15))
//                    Spacer()
//                }
//
//
//                Button(action: {
//                    /* Handle button action */
//                    let destinationView = IDLogin()
//                    if !(destinationView is EmptyView) {
//                        // Only navigate if the destination view is not an empty view
//                        self.presentationMode.wrappedValue.dismiss() // Dismiss the current view
//                    }
//                    print(CandidateOrResearcher)
//                }) {
//                    RoundedRectangle(cornerRadius: 20)
//                        .frame(height: 50)
//                        .foregroundColor(Color(red: 0.223, green: 0.432, blue: 0.481))
//                        .overlay(
//                            Text("Enter")
//                                .foregroundColor(.white)
//                                .font(.headline)
//                        )
//                }
//                .disabled(ID.count != 10 || ID.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) != nil)
//
//
//                Spacer()
//
//                Image("Nafath")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 150, height: 150)
//
//                Spacer()
//            }
//            .padding()
//            .overlay(
//                RoundedRectangle(cornerRadius: 200)
//                    .foregroundColor(Color(red: 0.945, green: 0.289, blue: 0.323, opacity: 0.87))
//                    .offset(x: -UIScreen.main.bounds.width * 0.5, y: -UIScreen.main.bounds.height * 0.8)
//            )
//        }
//    }
//
//    func IDLogin() -> AnyView {
//        let enteredID = ID.trimmingCharacters(in: .whitespacesAndNewlines)
//        // Trim any leading/trailing whitespaces from the entered ID
//
//        let matchedResearcher = Researcher_Data_Model.sampleData_Researcher.first { researcher in
//            researcher.id_Researcher == enteredID
//        }
//
//        let matchedCandidate = Candidate_Data_Model.sampleData_Candidate.first { candidate in
//            candidate.id_Candidate == enteredID
//        }
//
//        if let matchedResearcher = matchedResearcher {
//            // ID matches a researcher
//            if CandidateOrResearcher == "Researcher" {
//                // Navigate to ResearcherView
//                print("Navigate to ResearcherView")
//                return AnyView(NavigationLink(destination: SplashView()) { // i should put the candidate main page
//                    EmptyView()
//                })
//            } else {
//                // ID is a researcher ID but CandidateOrResearcher does not equal "Researcher"
//                print("Entered ID does not match any ID in the data models")
//            }
//        } else if let matchedCandidate = matchedCandidate {
//            // ID matches a candidate
//            if CandidateOrResearcher == "Candidate" {
//                // Navigate to SplashView
//                print("Navigate to SplashView")
//                return AnyView(NavigationLink(destination: SplashView()) { // i should put the Researcher main page
//                    EmptyView()
//                })
//            } else {
//                // ID is a candidate ID but CandidateOrResearcher does not equal "Candidate"
//                print("Entered ID does not match any ID in the data models")
//            }
//        } else {
//            // ID does not match any ID in the data models
//            print("Entered ID does not match any ID in the data models")
//        }
//
//        return AnyView(EmptyView()) // Return an empty view if no navigation is performed
//    }
//
//
//}






//---------------------------------this is the main------------------------------------------------

//import SwiftUI


//struct Login: View {
//    @State private var ID = ""
//    @State private var errorMessage = ""
////    @Binding var CandidateOrResearcher: String
////    @State public var UserType :String
//    var body: some View {
//
//        NavigationView {
//
//            VStack {
//                //...other views
//                VStack {
//                    VStack {
//                        Image("ReachLogo")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                        Spacer()
//                    }
//                    VStack {
//                        Text("Sign Up / Login")
//                            .font(.title2)
//                            .bold()
//                            .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
//                    }
//
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 10)
//                            .foregroundColor(Color(red: 0.941, green: 0.929, blue: 0.929, opacity: 0.898))
//                            .frame(height: 50)
//                        HStack {
//                            Spacer()
//                            TextField("National ID", text: $ID)
//                                .onChange(of: ID) { newValue in
//                                    // limit input to 10 digits
//                                    if newValue.count > 10 {
//                                        ID = String(newValue.prefix(10))
//                                    }
//                                    // check for non-numeric characters
//                                    if newValue.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) != nil {
//                                        errorMessage = "Please enter numeric characters only"
//                                    } else {
//                                        errorMessage = ""
//                                    }
//                                }
//                                .padding(.horizontal)
//                                //.keyboardType(.numberPad) // use the .numberPad keyboard type
//                            Spacer()
//                        }
//                    }
//
//                    if !errorMessage.isEmpty {
//                        Text(errorMessage)
//                            .foregroundColor(.red)
//                            .font(.caption)
//                    }
//
//                    //...other views
//                    HStack{
//                        Text(" * Please Make sure of your ID Number")
//                            .foregroundColor(Color(hue: 1.0, saturation: 0.009, brightness: 0.443, opacity: 0.723)).font(.system(size: 15))
//                        Spacer()
//                    }
//
//
//                  Button(action: {
//                     NavigationLink(destination: {
//
//                         rMainView(rID: "")
//                     }, label: {
//
//                     })
//
//                  }, label: {
//                      RoundedRectangle(cornerRadius: 20)
//                          .frame(height: 50)
//                          .foregroundColor(Color(red: 0.223, green: 0.432, blue: 0.481))
//                          .overlay(
//                              Text("Enter")
//                                  .foregroundColor(.white)
//                                  .font(.headline)
//                          )
//                  })
//
//                    }
//                    .disabled(ID.count != 10 || ID.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) != nil) // disable button if ID is not exactly 10 digits or contains non-numeric characters
//
//
//                    Spacer()
//
//                    Image("Nafath")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 150, height: 150)
//
//                    Spacer()
//                }
//                .padding()
//                .overlay(
//                    RoundedRectangle(cornerRadius: 200)
//                        .foregroundColor(Color(red: 0.945, green: 0.289, blue: 0.323, opacity: 0.87))
//                        .offset(x: -UIScreen.main.bounds.width * 0.5, y: -UIScreen.main.bounds.height * 0.8)
//                )
//
//            }
//        }
//
//
//    }




import SwiftUI

struct Login: View {
    @State private var ID = ""
    @State private var errorMessage = ""
//    @Binding var CandidateOrResearcher: String

    var body: some View {
        VStack {
            // ...other views
            VStack {
                VStack {
                    Image("Logo")
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
                            .padding(.horizontal)
                            .keyboardType(.numberPad)
                        Spacer()
                    }
                }

                HStack {
                    Text(" * Please make sure of your ID Number")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.009, brightness: 0.443, opacity: 0.723))
                        .font(.system(size: 15))
                    Spacer()
                }

                Button(action: {
                    /* Handle button action */
                    NavigationLink(destination: {
                   
                                            rMainView(rID: "1111111111")
                                        }, label: {
                   
                                        })
                }) {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: 50)
                        .foregroundColor(Color(red: 0.223, green: 0.432, blue: 0.481))
                        .overlay(
                            Text("Enter")
                                .foregroundColor(.white)
                                .font(.headline)
                        )
                }
               

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
    }

}











//
//    func IDLogin() -> String {
//
//
//
//            let enteredID = ID.trimmingCharacters(in: .whitespacesAndNewlines)
//            // Trim any leading/trailing whitespaces from the entered ID
//
//            let matchedResearcher = Researcher_Data_Model.sampleData_Researcher.first { researcher in
//                researcher.id_Researcher == enteredID
//            }
//
//            let matchedCandidate = Candidate_Data_Model.sampleData_Candidate.first { candidate in
//                candidate.id_Candidate == enteredID
//            }
//
//            if let matchedResearcher = matchedResearcher {
//                // ID matches a researcher
//                if CandidateOrResearcher == "Researcher" {
//                    NavigationLink(destination: {
//
//                       rMainView(rID: ID)
//                    }, label: {
//
//
//                    })
//
//                    // Navigate to ResearcherView
//                    rMainView(rID:CandidateOrResearcher)
////                    print("Navigate to ResearcherView")
//                } else {
//                    // ID is a researcher ID but CandidateOrResearcher does not equal "Researcher"
//                    //print("Entered ID does not match any ID in the data models")
//                }
//            } else if let matchedCandidate = matchedCandidate {
//                // ID matches a candidate
//                if CandidateOrResearcher == "Candidate" {
//                    // Navigate to CandidateView
//                    cMainView(cID: CandidateOrResearcher)
//                } else {
//                    // ID is a candidate ID but CandidateOrResearcher does not equal "Candidate"
//                    print("Entered ID does not match any ID in the data models")
//                }
//            } else {
//                // ID does not match any ID in the data models
//                print("Entered ID does not match any ID in the data models")
//            }
//            return CandidateOrResearcher
//        }
//    }
//



//---------------------------------------------------------------------------
    //
//    func IDLogin() {
//        let enteredID = ID.trimmingCharacters(in: .whitespacesAndNewlines)
//        // Trim any leading/trailing whitespaces from the entered ID
//
//        let matchedResearcher = Researcher_Data_Model.sampleData_Researcher.first { researcher in
//            researcher.id_Researcher == enteredID
//        }
//
//        let matchedCandidate = Candidate_Data_Model.sampleData_Candidate.first { candidate in
//            candidate.id_Candidate == enteredID
//        }
//
//        if let matchedResearcher = matchedResearcher {
//            // ID matches a researcher, perform the appropriate action
//            if CandidateOrResearcher == "Candidate" {
//                // Navigate to CandidateView
//                print("Navigate to CandidateView")
//            } else if CandidateOrResearcher == "Researcher" {
//                // Navigate to ResearcherView
//                print("Navigate to ResearcherView")
//            }
//        } else if let matchedCandidate = matchedCandidate {
//            // ID matches a candidate, perform the appropriate action
//            if CandidateOrResearcher == "Candidate" {
//                // Navigate to CandidateView
//                print("Navigate to CandidateView")
//            } else if CandidateOrResearcher == "Researcher" {
//                // Navigate to ResearcherView
//                print("Navigate to ResearcherView")
//            }
//        } else {
//            // ID does not match any ID in the data models, show an error message or handle it as needed
//            print("Entered ID does not match any ID in the data models")
//        }
//    }
//}


    //--------------------------------------------
//    func IDLogin() {
//        let enteredID = ID.trimmingCharacters(in: .whitespacesAndNewlines)
//        // Trim any leading/trailing whitespaces from the entered ID
//
//        let matchedResearcher = Researcher_Data_Model.sampleData_Researcher.first { researcher in
//            researcher.id_Researcher == enteredID
//        }
//
//        if let matchedResearcher = matchedResearcher {
//            // ID matches, perform the appropriate action
//            if CandidateOrResearcher == "Candidate" {
//                // Navigate to CandidateView
//                print("Navigate to CandidateView")
//            } else if CandidateOrResearcher == "Researcher" {
//                // Navigate to ResearcherView
//                print("Navigate to ResearcherView")
//            }
//        } else {
//            // ID does not match, show an error message or handle it as needed
//            print("Entered ID does not match any ID in the data model")
//        }
//    }
//}
//
    
    
    
    
    
    
    
//    func IDLogin() {
//        // Check if the entered ID matches any ID in the data model
//        let idModel = IDmodel() // Create an instance of IDmodel
//        let enteredID = ID.trimmingCharacters(in: .whitespacesAndNewlines)
//        // Trim any leading/trailing whitespaces from the entered ID
//
//
//        if idModel.ID.contains(enteredID) {
//            // ID matches, perform the appropriate action
//            if CandidateOrResearcher == "Candidate" {
//                // Navigate to CandidateView
//                print("Navigate to CandidateView")
//            } else if CandidateOrResearcher == "Researcher" {
//                // Navigate to ResearcherView
//                print("Navigate to ResearcherView")
//            }
//        } else {
//            // ID does not match, show an error message or handle it as needed
//            print("Entered ID does not match any ID in the data model")
//        }
//    }
//}
    
    
//    func IDLogin(){
//        //check if candidate id or Research ID
//
//        if CandidateOrResearcher == "Candidate" {
//                // Navigate to CandidateView
//
//           print("inside")
//
//            } else if CandidateOrResearcher == "Researcher" {
//                // Navigate to ResearcherView
//            }
//
//    }
//            }








//
//    struct Login_Previews: PreviewProvider {
//        @State var D = "Cnadidate"
//        static var previews: some View {
//            Login(CandidateOrResearcher: $D)
//        }
//    }

    





//
//import SwiftUI
//
//struct Login: View {
//    @State private var ID = ""
//    var body: some View {
//        VStack {
//            VStack {
//                Image("Logo")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                Spacer()
//            }
//            VStack {
//                Text("Sign Up / Login")
//                    .font(.title2)
//                    .bold()
//                    .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
//            }
//
//            ZStack {
//                RoundedRectangle(cornerRadius: 10)
//                    .foregroundColor(Color(red: 0.941, green: 0.929, blue: 0.929, opacity: 0.898))
//                    .frame(height: 50)
//                HStack {
//                    Spacer()
//                    TextField("National ID", text: $ID)
//                        .onChange(of: ID) { newValue in
//                            // limit input to 10 digits
//                            if newValue.count > 10 {
//                                ID = String(newValue.prefix(10))
//                            }
//                        }
//                        .padding(.horizontal)
//                        .keyboardType(.numberPad) // use the .numberPad keyboard type
//                    Spacer()
//                }
//            }
//            HStack{
//                Text(" * Enter Numbers Only \n *Please Make sure of your ID Number")
//                    .foregroundColor(Color(hue: 1.0, saturation: 0.009, brightness: 0.443, opacity: 0.723)).font(.system(size: 15))
//                Spacer()
//            }
//
//
//            Button(action: {
//                /* Handle button action */
//            }) {
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(height: 50)
//                    .foregroundColor(Color(red: 0.223, green: 0.432, blue: 0.481))
//                    .overlay(
//                        Text("Enter")
//                            .foregroundColor(.white)
//                            .font(.headline)
//                    )
//            }
//            .disabled(ID.count != 10 || ID.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) != nil) // disable button if ID is not exactly 10 digits or contains non-numeric characters
//
//
//            Spacer()
//
//            Image("Nafath")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 150, height: 150)
//
//            Spacer()
//        }
//        .padding()
//        .overlay(
//            RoundedRectangle(cornerRadius: 200)
//                .foregroundColor(Color(red: 0.945, green: 0.289, blue: 0.323, opacity: 0.87))
//                .offset(x: -UIScreen.main.bounds.width * 0.5, y: -UIScreen.main.bounds.height * 0.8)
//        )
//    }
//}
//
//struct Login_Previews: PreviewProvider {
//    static var previews: some View {
//        Login()
//    }
//}
//








//
//import SwiftUI
//struct Login: View {
//
//@State private var ID = ""
//var body: some View {
//    VStack {
//        VStack {
//            Image("Logo")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//            Spacer()
//        }
//        VStack {
//            Text("Sign Up / Login")
//                .font(.title2)
//                .bold()
//                .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
//        }
//
//        ZStack {
//            RoundedRectangle(cornerRadius: 10)
//                .foregroundColor(Color(red: 0.941, green: 0.929, blue: 0.929, opacity: 0.898))
//                .frame(height: 50)
//            HStack {
//                Spacer()
//                TextField("National ID", text: $ID)
//                    .padding(.horizontal)
//                    .keyboardType(.decimalPad)
//
//                Spacer()
//            }
//        }
//
//        Button(action: {
//            /* Handle button action */
//        }) {
//            RoundedRectangle(cornerRadius: 20)
//                .frame(height: 50)
//                .foregroundColor(Color(red: 0.9098039215686274, green: 0.396078431372549, blue: 0.43529411764705883))
//                .overlay(
//                    Text("Enter")
//                        .foregroundColor(.white)
//                        .font(.headline)
//                )
//        }
//
//        Spacer()
//
//        Image("Nafath")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 150, height: 150)
//
//        Spacer()
//    }
//    .padding()
//    .overlay(
//        RoundedRectangle(cornerRadius: 200)
//            .foregroundColor(Color(red: 0.217, green: 0.433, blue: 0.477))
//            .offset(x: -UIScreen.main.bounds.width * 0.5, y: -UIScreen.main.bounds.height * 0.8)
//    )
//}
//
//}
//struct Login_Previews: PreviewProvider {
//static var previews: some View {
//Login()
//}
//}
//

















//
//import SwiftUI
//
//struct Login: View {
//    @State var ID: String = ""
//
//    var body: some View {
//        VStack {
//
//            VStack {
//                Image("Logo")
//                    .resizable()
//                    .frame(width: 500.0, height: 500.0)
//                    .scaledToFit()
//                    .fixedSize()
//                Spacer()
//
//            }
//            VStack {
//
//                Text("Sign Up / Login")
//                    .font(.title2)
//                    .bold()
//                    .foregroundColor(Color(red: 0.31, green: 0.38823529411764707, blue: 0.38823529411764707))
//                    .position(x: 200, y: -30)
//            }
//
//            ZStack {
//                RoundedRectangle(cornerRadius: 10)
//                    .foregroundColor(Color(red: 0.9411764705882353, green: 0.9294117647058824, blue: 0.9294117647058824, opacity: 0.898))
//                    .frame(width: 350, height: 50)
//                HStack{
//                    Spacer(minLength: 20)
//                    TextField("National ID", text: $ID)
//                        .padding(.horizontal)
//                }
//            }
//
//            Button("Enter") {
//                /* Handle button action */
//            }
//
//            .frame(width: 200, height: 50)
//            .background(Color(red: 0.30980392156862746, green: 0.5647058823529412, blue: 0.5647058823529412, opacity: 0.961))
//            .foregroundColor(.white)
//            .cornerRadius(20)
//
//            Spacer()
//
//            Image("Nafath")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 150, height: 150)
//            Spacer(minLength: 100)
//
//        }
//        .padding()
//
//    }
//}
//
//struct Login_Previews: PreviewProvider {
//    static var previews: some View {
//        Login()
//    }
//}
//














//import SwiftUI
//
//struct Login: View {
//    @State var ID: String = ""
//    var body: some View {
//
//
//        VStack{
//            VStack(){
//                Image("Logo").resizable()
//                    .frame(width: 500.0, height: 500.0)
//                    .scaledToFit().fixedSize()
//                Spacer()
//
//            }
//            VStack{
//                Text("Sign Up / Login").font(.title2).bold().foregroundColor(Color(red: 0.31, green: 0.38823529411764707, blue: 0.38823529411764707)).position(x:200,y:-30)
//
//            }
//
//            ZStack{
//                VStack(spacing:300){
//                    RoundedRectangle(cornerRadius:10)
//                        .foregroundColor(Color(red: 0.9411764705882353, green: 0.9294117647058824, blue: 0.9294117647058824, opacity: 0.898)).frame(width: 350, height:50)
//
//                    TextField("National ID ", text: $ID)
//
//
//
//                }
//
//
//                Button("Enter") {
//                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                }.offset(x:0,y:-100)
//
//                Image("Nafath").resizable().scaledToFit().frame(width: 150,height: 150)
//
//            }
//
//        }
//
//    }
//}
//
struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
