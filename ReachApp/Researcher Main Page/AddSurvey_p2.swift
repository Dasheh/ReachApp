//
//  AddSurvey_p2.swift
//  Reach
//
//  Created by Hatun Alshkrah on 19/01/1445 AH.
//

import SwiftUI


struct AddSurvey_p2: View {
    
    let all_lists = myLists() // to take the lists from the data model
    
    @StateObject var selection = Selection()
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        ScrollView{
            
            VStack{
                HStack(spacing:12){
                    Spacer()
                    VStack{
                        HStack{
                            
                            Text("One More..")
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
                                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                                            .foregroundColor(Color(red: 0.9411764705882353, green: 0.9294117647058824, blue: 0.9294117647058824)).frame(width: 350, height:10)
                                        Spacer()
                                    }
                                    HStack{
                                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                                            .frame(width: 165, height:10)
                                            .foregroundColor(Color(red: 0.996, green: 0.37254901960784315, blue: 0.3333333333333333))
                                        Spacer()
                                    }
                                }
                                Spacer()
                                
                                
                                VStack(spacing:20){
                                    HStack{
                                        Text("Please Indicate your trageted candidates")
                                            .font(.system(size: 17))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                        Spacer()
                                    }
                                    
                                    
                                    // the age texts
                                    VStack{
                                        HStack{
                                            Text("Age")
                                                .font(.system(size: 17))
                                                .fontWeight(.bold)
                                                .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                            Spacer()
                                            
                                            
                                        }
                                        
                                        HStack{
                                            Text("Min Age")
                                                .font(.system(size: 14))
                                                .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                            Spacer()
                                            
                                            Text("Max Age")
                                                .font(.system(size: 14))
                                                .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                            Spacer()
                                        }
                                        Spacer()
                                        
                                        // the age drop-downs lists
                                        ZStack{
                                            HStack{
                                                Spacer().frame(width:-60)
                                                
                                                VStack {
                                                    Picker("Select the range of targted age", selection: $selection.min_age) {
                                                        ForEach(all_lists.min_age, id: \.self) {
                                                            Text($0)}}
                                                    
                                                    // this store the last selection from the user
                                                    .onChange(of: selection.min_age) { newValue in
                                                      selection.values.append(newValue)
                                                    }
                                                
                                                    .tint(.black)
                                                    .frame(width: 90, height: 35, alignment: .leading)
                                                    .background(Color(red: 0.944, green: 0.929, blue: 0.929))
                                                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                                    .pickerStyle(.menu)
                                                    Spacer() }
                                                
                                                Spacer().frame(width:90)
                                                
                                                HStack{
                                                    VStack{
                                                        Picker("Select the range of targted age", selection: $selection.max_age) {
                                                            ForEach(all_lists.max_age, id: \.self) {
                                                                Text($0)
                                                            }
                                                        }
                                                        .onChange(of: selection.max_age) { newValue in
                                                          selection.values.append(newValue)
                                                        }
                                                     
                                                            .tint(.black)
                                                            .frame(width: 90, height: 35, alignment: .leading)
                                                            .background(Color(red: 0.944, green: 0.929, blue: 0.929))
                                                            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                                            .pickerStyle(.menu)
                                                            Spacer()}}
                                                    Spacer()}
                                                
                                                
                          // the gender drop-down list and text
                                                
                                                VStack{
                                                    Spacer().frame(height:50)
                                                    HStack{
                                                        Text("Gender")
                                                            .font(.system(size: 17))
                                                            .fontWeight(.bold)
                                                            .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                                        Spacer()}
                                                    
                                                    Spacer()
                                                    
                                                    HStack{
                                                        Picker("Select the range of targted gender", selection: $selection.gender) {
                                                            ForEach(all_lists.gender, id: \.self) {
                                                                Text($0)}}
                                                        
                                                        .onChange(of: selection.gender) { newValue in
                                                          selection.values.append(newValue)}
                                                        
                                                        .tint(.black)
                                                        .frame(width: 360, height: 35, alignment: .leading)
                                                        .background(Color(red: 0.944, green: 0.929, blue: 0.929))
                                                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                                        .pickerStyle(.menu)
                                                        Spacer()}
                                                    Spacer().frame(height:480)}
                                                
                                                
                                // the income drop-down list and text
                                                
                                                VStack{
                                                    Spacer()
                                                    HStack{
                                                        Text("Income")
                                                            .font(.system(size: 17))
                                                            .fontWeight(.bold)
                                                            .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                                        Spacer()}
                                                    
                                                    HStack{
                                                        Picker("Select the range of targted Incomes", selection: $selection.incomes) {
                                                            ForEach(all_lists.incomes, id: \.self) {
                                                                Text($0)}}
                                                    
                                                        .onChange(of: selection.incomes) { newValue in
                                                          selection.values.append(newValue)}
                                                        
                                                        .tint(.black)
                                                        .frame(width: 360, height: 35, alignment: .leading)
                                                        .background(Color(red: 0.944, green: 0.929, blue: 0.929))
                                                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                                        .pickerStyle(.menu)
                                                        Spacer()}
                                                    Spacer()
                                                    Spacer()
                                                    Spacer()
                                                }
                                                
                             // the sector drop-down list and text
                                                VStack{
                                                    Spacer()
                                                    Spacer().frame(height:110)
                                                    HStack{
                                                        Text("Sector")
                                                            .font(.system(size: 17))
                                                            .fontWeight(.bold)
                                                            .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                                        Spacer() }
                                                    
                                                    HStack{
                                                        Picker("Select the range of targted sector", selection: $selection.sector) {
                                                            ForEach(all_lists.sector, id: \.self) {
                                                                Text($0)}}
                                                        
                                                        .onChange(of: selection.sector) { newValue in
                                                          selection.values.append(newValue)}
                                                        
                                                        .tint(.black)
                                                        .frame(width: 360, height: 35, alignment: .leading)
                                                        .background(Color(red: 0.944, green: 0.929, blue: 0.929))
                                                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                                        .pickerStyle(.menu)
                                                        Spacer()}
                                                    Spacer()
                                                    Spacer()
                                                    Spacer()}
                                            
                                  // the place drop-down list and text
                                                VStack{
                                                    
                                                    Spacer().frame(height:70)
                                                    HStack{
                                                        
                                                        Text("Place")
                                                            .font(.system(size: 17))
                                                            .fontWeight(.bold)
                                                            .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                                        Spacer() }
                                                    
                                                    HStack{
                                                        Picker("Select the range of targted place", selection: $selection.place) {
                                                            ForEach(all_lists.place, id: \.self) {
                                                                Text($0)}}
                                                        
                                                        .onChange(of: selection.place) { newValue in
                                                          selection.values.append(newValue)}
                                                    
                                                        .tint(.black)
                                                        .frame(width: 360, height: 35, alignment: .leading)
                                                        .background(Color(red: 0.944, green: 0.929, blue: 0.929))
                                                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                                        .pickerStyle(.menu)
                                                        Spacer()
                                                    }
                                                    
                                                }
                                                
                           // the Martial Status drop-down list and text
                                                VStack{
                                                    Spacer().frame(height:240)
                                                    HStack{
                                                        
                                                        Text("Martial Status")
                                                            .font(.system(size: 17))
                                                            .fontWeight(.bold)
                                                            .foregroundColor(Color(red: 0.31, green: 0.387, blue: 0.402))
                                                        Spacer() }
                                                    
                                                    HStack{
                                                        Picker("Select the range of targted people", selection: $selection.status) {
                                                            ForEach(all_lists.martial, id: \.self) {
                                                                Text($0)}}
                                                        
                                                        .onChange(of: selection.status) { newValue in
                                                          selection.values.append(newValue)}
                                                        
                                                        .tint(.black)
                                                        .frame(width: 360, height: 35, alignment: .leading)
                                                        .background(Color(red: 0.944, green: 0.929, blue: 0.929))
                                                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                                        .pickerStyle(.menu)
                                                        Spacer()
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                            
                                        }
                                        
                                    }
                                    
                                }
                               
                                
                  //the continue button
                                HStack{
                                    VStack{
                                        Spacer().frame(height:580)
                                        NavigationLink(destination: AddSurvey_p3(selection: selection)) {
                                            Text("Continue")
                                        }
                                        
                                        .foregroundColor(.white)
                                        .font(.system(size:20))
                                        .frame(width: 200, height: 50)
                                        .background(Color(red: 0.2196078431372549, green: 0.43137254901960786, blue: 0.47843137254901963))
                                        .clipShape(Capsule())
                                        
                                    }.navigationBarBackButtonHidden(true)
                                 
                                    
                                    Spacer().frame(width:30)
                                }
                                
                            }
                       
                       
                     
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
    }


struct AddSurvey_p2_Previews: PreviewProvider {
    static var previews: some View {
        AddSurvey_p2()
     
    }
}
