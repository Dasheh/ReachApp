//
//  AddSurvey_p1.swift
//  Reach
//
//  Created by Hatun Alshkrah on 19/01/1445 AH.
//

import SwiftUI

struct AddSurvey_p1: View {
    
   @EnvironmentObject var surveyData: SurveyData
   @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
        
    @State  var IsActive = false
    @State var FileName = "Click to Upload a file"
    @State var OpenFile = false
    
    var body: some View {
        
        
            ScrollView{
                
                VStack{
                    VStack{
                        Spacer()
                        HStack(spacing:12){
                            Spacer()
                            VStack{
                                
                                Spacer()
                                HStack{
                                    
                                    Text("Let's Start")
                                        .font(.system(size: 48))
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
                                                RoundedRectangle(cornerRadius: /*@PLACEHOLDER=Corner Radius@*/10.0)
                                                    .foregroundColor(Color(red: 0.9411764705882353, green: 0.9294117647058824, blue: 0.9294117647058824)).frame(width: 350, height:10)
                                                Spacer()
                                            }
                                            HStack{
                                                RoundedRectangle(cornerRadius: /*@PLACEHOLDER=Corner Radius@*/10.0)
                                                    .frame(width: 60, height:10)
                                                    .foregroundColor(Color(red: 0.996, green: 0.37254901960784315, blue: 0.3333333333333333))
                                                Spacer()
                                            }
                                        }
                                        Spacer()
                                    }
                                    
                                }
                            
                                
         //the survey link TextField
                                VStack(spacing:20){
                                    Spacer()
                                    HStack{
                                        Text("Survey Link")
                                            .font(.system(size: 20))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                        Spacer()
                                    }
                                    
                                    
                                    TextField("https://docs.google.com…", text: $surveyData.surveyLink, axis: .vertical)
                              
                                        .font(.system(size:20))
                                        .padding([.top, .leading, .bottom], 15.0)
                                        .background(Color(red: 0.9411764705882353, green: 0.9294117647058824, blue: 0.9294117647058824, opacity: 0.898))
                                        .cornerRadius(10)
                                        .lineLimit(1...1)
                              
                                    
                                }
                                
                                
                                
                                //the Research Subject TextField
                                VStack{
                                    
                                    VStack{
                                        HStack{
                                            Text("Research Subject")
                                                .font(.system(size: 20))
                                                .fontWeight(.bold)
                                                .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                            Spacer()
                                        }
                                        TextField("Use of social media in saudi arabia…", text: $surveyData.researchSub, axis: .vertical)
                                            .font(.system(size:20))
                                            .padding([.top, .leading, .bottom], 15.0)
                                            .background(Color(red: 0.9411764705882353, green: 0.9294117647058824, blue: 0.9294117647058824, opacity: 0.898))
                                            .cornerRadius(10)
                                            .lineLimit(2...2)
                                        
                                        
                                    }
                                    
                                }
                                
                                
                                //the Research Description TextField
                                VStack{
                                    
                                    HStack{
                                        
                                        Text("Describtion")
                                            .font(.system(size: 20.0))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                        Spacer()
                                    }
                                    TextField("The impact off social media in saudi society and culture…", text: $surveyData.describtion, axis: .vertical)
                                        .padding(.all, 10.0)
                                        .font(.system(size:20))
                                        .background(Color(red: 0.9411764705882353, green: 0.9294117647058824, blue: 0.9294117647058824, opacity: 0.898))
                                        .cornerRadius(10)
                                        .lineLimit(4...4)
                                    
                                    Spacer()
                                    Spacer()
                                    VStack{
                                        Spacer()
                                        Divider()
                                    }
                                }
                                
                                
                                //the number of responses TextField
                                VStack(spacing:15){
                                    
                                    Spacer()
                                    HStack{
                                        Text("Number of Responses")
                                            .font(.system(size: 20))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                        Spacer()
                                    }
                                    
                                    
                                    TextField("50", text: $surveyData.responses, axis: .vertical)
                                        .font(.system(size:20))
                                        .padding([.top, .leading, .bottom], 15.0)
                                        .background(Color(red: 0.9411764705882353, green: 0.9294117647058824, blue: 0.9294117647058824, opacity: 0.898))
                                        .cornerRadius(10)
                                        .lineLimit(1...1)
                                    
                                    VStack(spacing:10){
                                        Spacer()
                                        HStack{
                                            Text("Each Response Will Cost...")
                                                .font(.system(size: 20))
                                                .fontWeight(.bold)
                                                .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                            Spacer()
                                        }
                                        
                                        
                                        TextField("5 sar", text: $surveyData.costs, axis: .vertical)
                                            .font(.system(size:20))
                                            .padding([.top, .leading, .bottom], 15.0)
                                            .background(Color(red: 0.9411764705882353, green: 0.9294117647058824, blue: 0.9294117647058824, opacity: 0.898))
                                            .cornerRadius(10)
                                            .lineLimit(1...1)
                                        
                                        Spacer()
                                        Divider()
                                        Spacer()
                                        
                                    }
                                    
                                }
                                
                                
                                
               //the Upload research Acceptance letter TextField
                                VStack{
                                    HStack{
                                        Text("*")
                                            .font(.system(size: 20))
                                            .foregroundColor(Color.red)
                                        
                                        Text("Upload Research Acceptance Letter")
                                            .font(.system(size: 18.9))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                        Spacer()
                                    }
                                }
                                
                                
                                
                              
                                VStack{
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    
                                    VStack(spacing:9){
                                        Button {
                                            self.OpenFile.toggle()
                                        } label: {
                                            
                                            Image(systemName: "square.and.arrow.up")
                                            
                                        }
                                        .foregroundColor(Color(red: 0.997, green: 0.374, blue: 0.331, opacity: 0.619))
                                        .font(.system(size:30))
                                        
                                        Text(self.FileName)
                                            .font(.system(size:20))
                                            .foregroundColor(Color(hue: 0.85, saturation: 0.042, brightness: 0.606))
                                        
                                        
                                        
                           // this helps in uploading the file into the page
                                            .fileImporter( isPresented: $OpenFile, allowedContentTypes: [.pdf], allowsMultipleSelection: false, onCompletion: {
                                                (Result) in
                                                do{
                                                    let fileURL = try Result.get()
                                                    print(fileURL)
                                                    self.FileName = fileURL.first?.lastPathComponent ?? "file not available"
                                                }
                                                catch{ print("error reading file \(error.localizedDescription)") }})
                                        
                                        
                                        Spacer()
                                    }
                                    Spacer()
                                }//closes the VStack at line #147
                                
                                
                            }
                            
                            Spacer()
                            
                        }
                        
                        
                
                        
                        
                        //the continue button
                        VStack{
                            Spacer()
                            Spacer()
                            Spacer()
                            
                            
                            Button {IsActive = true
                                surveyData.addSurveyDataToSurveyDataArray()
    
                            } label: {Text("Continue")}
                             
                                .foregroundColor(.white)
                                .font(.system(size:20))
                                .frame(width: 200, height: 50)
                                .background(Color(red: 0.2196078431372549, green: 0.43137254901960786, blue: 0.47843137254901963))
                                .clipShape(Capsule())
                            
                            NavigationLink(destination: AddSurvey_p2(), isActive : $IsActive){}
                            
                        }.navigationBarBackButtonHidden(true)
                        
                        
                    }
                    
                }
                Spacer()
                    .padding()
                
            }
            
            Spacer()
            
            
        }

   
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            AddSurvey_p1()
        }
    }
}


