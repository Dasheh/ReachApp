//
//  Edit_Survey.swift
//  Reach
//
//  Created by SarahAldakhil on 16/01/1445 AH.
//

import SwiftUI



struct Edit_Survey: View {
    
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    var Survey_Status = ["Publish","Pause","Unpublish"]
    @State var  selection  = ""
    @State  var SurveyTitle = ""
    @State var Describtion =  ""
    @State var NumOfResponses =  ""
    
    @ObservedObject var  theSurvey  : Survey_Card_Model
    @EnvironmentObject var surveys : CounterViewModel
    
   // A function to update the Array in CounterViewModel
    func updateSurvey() {
        print("🚩 \(theSurvey.title)")
        guard let index = surveys.sampleData.firstIndex(
            where: { $0.title == theSurvey.title && $0.discreption == theSurvey.discreption }) else {
            return
        }

        theSurvey.title = SurveyTitle
        theSurvey.discreption = Describtion
        print("🚩🚩 \(theSurvey.title)")
        surveys.sampleData[index] = theSurvey
        
        
        dismiss()
    }
    
    
        var body: some View {
            NavigationView{
                VStack(){
                    Spacer()
                    Spacer().navigationTitle("Survey Settings")
                    Spacer()
                    Spacer()
                    
                    
                    
                    
                    //The Survey Title Edit TextField
                    VStack(spacing:20){
                        HStack{
                            Spacer()
                            Text("Survey Title")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                .padding(.leading, -13.0)
                            
                            
                            Image(systemName: "pencil.circle.fill").foregroundColor(Color(red: 1, green: 0.5450980392156862, blue: 0.5137254901960784, opacity: 1.0)).font(.system (size :20)).padding(.trailing,7)
                            
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            
                            
                            
                        }
                        
                        
                        TextField("Use of social media in saudi arabia…", text: $SurveyTitle, axis: .vertical)
                            .font(.system(size:20))
                            .padding([.top, .leading, .bottom], 15.0)
                            .background(Color(red: 0.9411764705882353, green: 0.9294117647058824, blue: 0.9294117647058824, opacity: 0.898))
                            .cornerRadius(10)
                            .lineLimit(1...1)
                            .frame(width: 365)
                        
                        //The Describtion Edit TextField
                        VStack{
                            
                            HStack{
                                Spacer()
                                Text("Describtion")
                                    .font(.system(size: 20.0))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                    .padding(.leading, -13.0)
                                
                                Image(systemName: "pencil.circle.fill").foregroundColor(Color(red: 1, green: 0.5450980392156862, blue: 0.5137254901960784, opacity: 1.0)).font(.system (size :20)).padding(.trailing,7)
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                                
                            }
                            TextField("The impact off social media in saudi society and culture…", text: $Describtion, axis: .vertical)
                                .padding(.all, 10.0)
                                .font(.system(size:20))
                                .background(Color(red: 0.9411764705882353, green: 0.9294117647058824, blue: 0.9294117647058824, opacity: 0.898))
                                .cornerRadius(10)
                                .lineLimit(4...4)
                                .frame(width: 365)
                            
                        }
                        
                        
                        //The Number Of Responses Edit TextField
                        VStack{
                            HStack{
                                Spacer()
                                Text("Number Of Responses")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                    .padding(.leading, -5.0)
                                
                                Image(systemName: "pencil.circle.fill").foregroundColor(Color(red: 1, green: 0.5450980392156862, blue: 0.5137254901960784, opacity: 1.0)).font(.system (size :20)).padding(.trailing,7)
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                                
                            }
                            
                            TextField("200", text: $NumOfResponses, axis: .vertical)
                                .font(.system(size:20))
                                .padding([.top, .leading, .bottom], 15.0)
                                .background(Color(red: 0.9411764705882353, green: 0.9294117647058824, blue: 0.9294117647058824, opacity: 0.898))
                                .cornerRadius(10)
                                .lineLimit(1...1)
                                .frame(width: 365)
                            
                            
                        }
                        
                        
                        
                        
                        VStack{
                            VStack{
                                HStack{
                                    Spacer()
                                    Text("Survey Status")
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                        .padding(.leading, -5.0)
                                    
                                    Image(systemName: "pencil.circle.fill").foregroundColor(Color(red: 1, green: 0.5450980392156862, blue: 0.5137254901960784, opacity: 1.0)).font(.system (size :20)).padding(.trailing,7)
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    
                                }}
                            
                            
                            Picker("Select the range of targted age", selection: $selection) {
                                ForEach(Survey_Status, id: \.self) {
                                    Text($0)
                                    
                                    
                                }
                                
                            }
                            .tint(.black)
                            .frame(width: 365, height: 50, alignment: .leading)
                            .background(Color(red: 0.944, green: 0.929, blue: 0.929))
                            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                            .pickerStyle(.menu)
                            Spacer()
                            
                            
                            
                        }
                        
                        
                        
                        
                        VStack{
                            
                            Button(action: {
                                updateSurvey()
                                dismiss()
                            }, label: {
                                Text("Update")
                                    .foregroundColor(Color(red: 0.30980392156862746, green: 0.5647058823529412, blue: 0.5647058823529412))
                                    .font(.system(size:20))
                                    .frame(width: 200, height: 50)
                                    .background(Color(red: 0.792156862745098, green: 0.8666666666666667, blue: 0.8666666666666667))
                                    .clipShape(Capsule())
                                
                            })
                            
                            
                        }.navigationBarBackButtonHidden(true)
                        
                    }
                }
                
            }
            
            
        
    }
    
}


//struct Edit_Survey_Previews: PreviewProvider {
//    
//    static var previews: some View {
//        Edit_Survey()
//        
//    }
//    
//}
