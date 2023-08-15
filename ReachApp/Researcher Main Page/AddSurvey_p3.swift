//
//  AddSurvey_p4.swift
//  Reach
//
//  Created by Hatun Alshkrah on 20/01/1445 AH.
//

import SwiftUI

struct AddSurvey_p3: View {

    @EnvironmentObject var surveyData: SurveyData // this is for printing the input in AddSurvey_p1 textfields

    @StateObject var selection: Selection // this is for printing the user's selection in AddSurvey_p2
    
    // these are for the navigation link & checkbox
    @State private var Activate = false
    @State var isOn = false
    
    var body: some View {
        
        ScrollView{
            VStack{
                HStack(spacing:12){
                    Spacer()
                    VStack{
                        HStack{
                            
                            Text("And We're Done")
                                .font(.system(size: 45))
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                            Spacer()
                        }
                        Spacer(minLength: 10)
                        ZStack {
                            VStack{
                                
             // the remaining rounded shape
                                ZStack{
                                    HStack{
                                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                                            .foregroundColor(Color(red: 0.9411764705882353, green: 0.9294117647058824, blue: 0.9294117647058824)).frame(width: 350, height:10)
                                        Spacer()
                                    }
                                    HStack{
                                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                                            .frame(width: 350, height:10)
                                            .foregroundColor(Color(red: 0.996, green: 0.37254901960784315, blue: 0.3333333333333333))
                                        Spacer()
                                    }
                                }
                                Spacer().frame(height:10)
                            }
                            
                        }
                    }
                }
                
                
                VStack(spacing:20){
                    HStack{
                        Text("Here Are Your Characteristics")
                            .font(.system(size: 17))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                        Spacer().frame(width:110)
                    }
                }
                
                VStack{
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: /*@PLACEHOLDER=Corner Radius@*/10.0)
                            .foregroundColor(Color(red: 0.9411764705882353, green: 0.9294117647058824, blue: 0.9294117647058824)).frame(width: 350, height:350)
                            .cornerRadius(10)
   // the code below prints the selections
                        VStack{
                            HStack{
                                Spacer().frame(width:50)
                                Text("Age:")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                Group{
                                    Text(selection.min_age) //it takes it from the class in the data model
                                    +
                                    Text(" - ")
                                    +
                                    Text(selection.max_age)
                                }
                                Spacer()
                            }
                            Spacer().frame(height:20)
                            
                            
                            
                            HStack{
                                Spacer().frame(width:50)
                                Text("Gender:")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                Text(selection.gender)
                                Spacer()
                            }
                            Spacer().frame(height:20)
                            
                            
                            
                            HStack{
                                Spacer().frame(width:50)
                                Text("Incomes:")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                Text(selection.incomes)
                                Spacer()
                            }
                            
                            
                            VStack{
                                Spacer().frame(height:20)
                                HStack{
                                    Spacer().frame(width:50)
                                    Text("Sector:")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                    Text(selection.sector)
                                    Spacer()
                                }
                                Spacer().frame(height:20)
                            }
                            
                            
                            VStack{
                                HStack{
                                    Spacer().frame(width:50)
                                    Text("Place:")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                    Text(selection.place)
                                    Spacer()
                                }
                                Spacer().frame(height:20)
                            }
                            
                            
                            VStack{
                                
                                HStack{
                                    Spacer().frame(width:50)
                                    Text("Marital Status:")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                    Text(selection.status)
                                    Spacer()
                                }
                                Spacer().frame(height:20)
                                
                            }
                            
                            VStack{
                              
                                HStack{
                                    Spacer().frame(width:50)
                                    Text("Number of responses:")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                    Text(surveyData.responses)
                                    Spacer()
                                }
                                Spacer().frame(height:10)
                            }
                        }
                        
                    }
                }
                
                Spacer()
                HStack{
                    Spacer().frame(width:11.5)
                    VStack{
                        Toggle(isOn: $isOn) {}
                        Spacer().frame(height:42)
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    .foregroundColor(.black)
                    
                    // the onChange is for the checkbox
                    .onChange(of: isOn) { newValue in Activate = newValue }
                    
                    // grouping the text for diffrenet colors
                    Group{
                        Text("By checking, i agree that all infomation provided is vaild. otherwise, ")
                            .foregroundColor(.black)
                        +
                        Text("i will be subject to legal consequences")
                            .foregroundColor(.red)
                    }
                    
                    Spacer().frame(width:20)
                }
                
            }
            
            Spacer().frame(height:90)
            
            VStack{
                
                //i sent the array of selections which called (values) in the selection class in the data model
                NavigationLink(destination:Researcher_Main_Page( Researcher :Researcher_Data_Model.sampleData_Researcher[0], User_Surveys: CounterViewModel().sampleData[0])){
                   
                    Text("Publish")
                }
                .disabled(!Activate)
                .foregroundColor(.white)
                .font(.system(size:20))
                .frame(width: 200, height: 50)
                .background(Color(red: 0.2196078431372549, green: 0.43137254901960786, blue: 0.47843137254901963))
                .clipShape(Capsule())
            
            }
          
        }
    }
    
    struct PreviewView: View {

      @StateObject var selections = Selection()
       
      var body: some View {

          AddSurvey_p3(selection: selections)
      }

    }
 
    // this struct is to create a checkbox
    struct iOSCheckboxToggleStyle: ToggleStyle {
        func makeBody(configuration: Configuration) -> some View {

            
            Button(action: {
                configuration.isOn.toggle()
                
            }, label: {Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                configuration.label})
            
        }
    }
}
