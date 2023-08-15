//
//  Welcome.swift
//  Reach
//
//  Created by Fay Hussain on 15/01/1445 AH.
////
///
///
///
///
///
///
///
///
///
///
///
///
import SwiftUI

struct Welcome: View {
    @State private var isTextVisible = false
    @State private var Candidate = "Candidate"
    @State private var Researcher  = "Researcher"
    
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("Welcome to")
                    .font(.title2)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                
                    .padding(.horizontal)
                    .opacity(isTextVisible ? 1 : 0)
                    .animation(.easeInOut(duration: 1.0))
                
                Text("Reach")
                    .font(.system(size:67))
                    .multilineTextAlignment(.leading)
                    .fontDesign(.serif)
                    .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
                    .bold()
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                    .opacity(isTextVisible ? 1 : 0)
                    .animation(.easeInOut(duration: 1.0))
                
                Text("I am a")
                    .font(.title2)
                    .foregroundColor(Color.black)
                
                    .padding(.horizontal)
                
                HStack {
                    Spacer()
                    Spacer(minLength: 100)
                    
                    NavigationLink(destination: Login( )) {
                        VStack {
                            HStack {
                                Circle()
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(Color(red: 0.722, green: 0.847, blue: 0.847))
                                    .overlay(
                                        Image(systemName: "person.crop.rectangle.stack")
                                            .foregroundColor(Color(red: 0.31, green: 0.565, blue: 0.565))
                                            .font(.system(size: 30))
                                    )
                                    .padding(.trailing, 10)
                                
                                Text("Candidate")
                                    .bold()
                                    .font(.title)
                                    .foregroundColor(Color(hue: 0.5, saturation: 0.16, brightness: 0.889))
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 70.0)
                                    .foregroundColor(Color(red: 0.2196078431372549, green: 0.43137254901960786, blue: 0.47843137254901963))
                                    .shadow(color: Color(hue: 0.53, saturation: 0.353, brightness: 0.073, opacity: 0.66), radius: 20, x: 0, y: 10)
                            )
                        }
                    }
                    .frame(maxWidth: 300)
                    .frame(height: 800 * 0.2)
                    Spacer()
                }
              
                
                
                HStack {
                    Spacer()
                    
                    NavigationLink(destination: Login_2()) {
                        VStack {
                            HStack {
                                Text("Researcher")
                                    .bold()
                                    .font(.title)
                                    .foregroundColor(Color(hue: 0.01, saturation: 0.123, brightness: 0.99))
                                
                                Circle()
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(Color(red: 1.0, green: 0.999, blue: 0.999, opacity: 0.338))
                                    .overlay(
                                        Image(systemName: "text.book.closed")
                                            .foregroundColor(Color(hue: 0.011, saturation: 0.178, brightness: 0.971))
                                            .font(.system(size: 30))
                                    )
                                    .padding(.leading, 10)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 70.0)
                                    .foregroundColor(Color(red: 0.9568627450980393, green: 0.3254901960784314, blue: 0.3764705882352941, opacity: 0.943))
                                    .shadow(color: Color(hue: 1.0, saturation: 0.741, brightness: 0.176, opacity: 0.802), radius: 20, x: 0, y: 10)
                            )
                        }
                    }
                    .frame(maxWidth: 350)
                    .frame(height: UIScreen.main.bounds.height * 0.2)
                  
                    Spacer()
                    Spacer(minLength: 50)
                }
                
                Spacer()
            }
            .onAppear {
                withAnimation {
                    isTextVisible = true
                }
            }
            
            
            .overlay(
                RoundedRectangle(cornerRadius: 200)
                    .foregroundColor(Color(red: 0.216, green: 0.433, blue: 0.477))
                    .offset(x: -UIScreen.main.bounds.width * 0.5, y: -UIScreen.main.bounds.height * 0.7)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 950)
                    .foregroundColor(Color(red: 0.957, green: 0.3254901960784314, blue: 0.3764705882352941, opacity: 0.904))
                    .offset(x: -UIScreen.main.bounds.width * 0, y: -UIScreen.main.bounds.height * 0.8)
            )
            
        }
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}

















///
//import SwiftUI
//
//struct Welcome: View {
//    @State private var isTextVisible = false
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                Spacer()
//
//                Text("Welcome to")
//                    .font(.title2)
//                    .foregroundColor(Color.black)
//                    .multilineTextAlignment(.leading)
//                    .bold()
//                    .padding(.horizontal)
//                    .opacity(isTextVisible ? 1 : 0)
//                    .animation(.easeInOut(duration: 1.0))
//
//                Text("Reach")
//                    .font(.largeTitle)
//                    .multilineTextAlignment(.leading)
//                    .fontDesign(.serif)
//                    .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
//                    .bold()
//                    .padding(.horizontal)
//                    .padding(.bottom, 30)
//                    .opacity(isTextVisible ? 1 : 0)
//                    .animation(.easeInOut(duration: 1.0))
//
//                Text("I am a")
//                    .font(.title2)
//                    .foregroundColor(Color.black)
//                    .bold()
//                    .padding(.horizontal)
//
//                HStack {
//                    Spacer()
//                    Spacer(minLength: 100)
//
//                    NavigationLink(destination: Login()) {
//                        VStack {
//                            HStack {
//                                Circle()
//                                    .frame(width: 80, height: 80)
//                                    .foregroundColor(Color(red: 0.722, green: 0.847, blue: 0.847))
//                                    .overlay(
//                                        Image(systemName: "person.crop.rectangle.stack")
//                                            .foregroundColor(Color(red: 0.31, green: 0.565, blue: 0.565))
//                                            .font(.system(size: 30))
//                                    )
//                                    .padding(.trailing, 10)
//
//                                Text("Candidate")
//                                    .bold()
//                                    .font(.title)
//                                    .foregroundColor(Color(hue: 0.5, saturation: 0.16, brightness: 0.889))
//                            }
//                            .padding()
//                            .background(
//                                RoundedRectangle(cornerRadius: 70.0)
//                                    .foregroundColor(Color(red: 0.2196078431372549, green: 0.43137254901960786, blue: 0.47843137254901963))
//                                    .shadow(color: Color(hue: 0.53, saturation: 0.353, brightness: 0.073, opacity: 0.66), radius: 20, x: 0, y: 10)
//                            )
//                        }
//                    }
//                    .frame(maxWidth: 350)
//                    .frame(height: 800 * 0.2)
//
//
//                    Spacer()
//
//                }
//
//                HStack {
//                    Spacer()
//
//                    NavigationLink(destination: Login()) {
//                        VStack {
//                            HStack {
//                                Text("Researcher")
//                                    .bold()
//                                    .font(.title)
//                                    .foregroundColor(Color(hue: 0.01, saturation: 0.123, brightness: 0.99))
//
//                                Circle()
//                                    .frame(width: 80, height: 80)
//                                    .foregroundColor(Color(hue: 0.011, saturation: 0.001, brightness: 1.0, opacity: 0.338))
//                                    .overlay(
//                                        Image(systemName: "text.book.closed")
//                                            .foregroundColor(Color(hue: 0.011, saturation: 0.178, brightness: 0.971))
//                                            .font(.system(size: 30))
//                                    )
//                                    .padding(.leading, 10)
//                            }
//                            .padding()
//                            .background(
//                                RoundedRectangle(cornerRadius: 70.0)
//                                    .foregroundColor(Color(red: 0.9568627450980393, green: 0.3254901960784314, blue: 0.3764705882352941, opacity: 0.802))
//                                    .shadow(color: Color(hue: 1.0, saturation: 0.741, brightness: 0.176, opacity: 0.802), radius: 20, x: 0, y: 10)
//                            )
//                        }
//                    }
//                    .frame(maxWidth: 350)
//                    .frame(height: UIScreen.main.bounds.height * 0.2)
//
//
//                    Spacer()
//                    Spacer(minLength: 50)
//                }
//
//                Spacer()
//            }
//            .onAppear {
//                withAnimation {
//                    isTextVisible = true
//                }
//            }
//        }
//    }
//}
//
//struct Welcome_Previews: PreviewProvider {
//    static var previews: some View {
//        Welcome()
//    }
//}






//import SwiftUI
//
//struct Welcome: View {
//    @State private var isTextVisible = false
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                Spacer()
//
//                Text("Welcome to")
//                    .font(.largeTitle)
//                    .foregroundColor(Color.black)
//                    .bold()
//                    .padding(.horizontal)
//                    .opacity(isTextVisible ? 1 : 0)
//                    .animation(.easeInOut(duration: 1.0))
//
//                Text("Reach")
//                    .font(.largeTitle)
//                    .fontDesign(.serif)
//                    .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
//                    .bold()
//                    .padding(.horizontal)
//                    .padding(.bottom, 30)
//                    .opacity(isTextVisible ? 1 : 0)
//                    .animation(.easeInOut(duration: 1.0))
//
//                Text("I am a")
//                    .font(.title2)
//                    .foregroundColor(Color.black)
//                    .bold()
//                    .padding(.horizontal)
//
//                NavigationLink(destination: Login()) {
//                    VStack {
//                        HStack {
//                            Spacer()
//                            Circle()
//                                .frame(width: 80, height: 80)
//                                .foregroundColor(Color(red: 0.722, green: 0.847, blue: 0.847))
//                                .overlay(
//                                    Image(systemName: "person.crop.rectangle.stack")
//                                        .foregroundColor(Color(red: 0.31, green: 0.565, blue: 0.565))
//                                        .font(.system(size: 30))
//                                )
//                                .padding(.trailing, 10)
//                        }
//
//                        Text("Candidate")
//                            .bold()
//                            .font(.title)
//                            .foregroundColor(Color(hue: 0.5, saturation: 0.16, brightness: 0.889))
//                    }
//                    .padding()
//                    .background(
//
//                        RoundedRectangle(cornerRadius: 70.0)
//                            .foregroundColor(Color(red: 0.2196078431372549, green: 0.43137254901960786, blue: 0.47843137254901963))
//                            .shadow(color: Color(hue: 0.53, saturation: 0.353, brightness: 0.073, opacity: 0.66), radius: 20, x: 0, y: 10)
//                    )
//                }
//                .frame(maxWidth: 350)
//                .frame(height: 800 * 0.2)
//                .padding(.horizontal)
//
//                NavigationLink(destination: Login()) {
//                    VStack {
//                        HStack {
//                            Spacer()
//                            Circle()
//                                .frame(width: 80, height: 80)
//                                .foregroundColor(Color(hue: 0.011, saturation: 0.001, brightness: 1.0, opacity: 0.338))
//                                .overlay(
//                                    Image(systemName: "text.book.closed")
//                                        .foregroundColor(Color(hue: 0.011, saturation: 0.178, brightness: 0.971))
//                                        .font(.system(size: 30))
//                                )
//                                .padding(.trailing, 10)
//                        }
//
//                        Text("Researcher")
//                            .bold()
//                            .font(.title)
//                            .foregroundColor(Color(hue: 0.01, saturation: 0.123, brightness: 0.99))
//                    }
//                    .padding()
//                    .background(
//                        RoundedRectangle(cornerRadius: 70.0)
//                            .foregroundColor(Color(red: 0.9568627450980393, green: 0.3254901960784314, blue: 0.3764705882352941, opacity: 0.802))
//                            .shadow(color: Color(hue: 1.0, saturation: 0.741, brightness: 0.176, opacity: 0.802), radius: 20, x: 0, y: 10)
//                    )
//                }
//                .frame(maxWidth: 350)
//                .frame(height: UIScreen.main.bounds.height * 0.2)
//                .padding(.horizontal)
//
//                Spacer()
//            }
//            .onAppear {
//                withAnimation {
//                    isTextVisible = true
//                }
//            }
//        }
//    }
//}
//
//struct Welcome_Previews: PreviewProvider {
//    static var previews: some View {
//        Welcome()
//    }
//}
//

//import SwiftUI
//
//struct Welcome: View {
//    @State private var isTextVisible = false
//
//    var body: some View {
//        VStack {
//            Spacer()
//
//            Text("Welcome to")
//                .font(.largeTitle)
//                .foregroundColor(Color.black)
//                .bold()
//                .padding(.horizontal)
//                .opacity(isTextVisible ? 1 : 0)
//                .animation(.easeInOut(duration: 1.0))
//
//            Text("Reach")
//                .font(.largeTitle)
//                .fontDesign(.serif)
//                .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
//                .bold()
//                .padding(.horizontal)
//                .padding(.bottom, 30)
//                .opacity(isTextVisible ? 1 : 0)
//                .animation(.easeInOut(duration: 1.0))
//
//            Text("I am a")
//                .font(.title2)
//                .foregroundColor(Color.black)
//                .bold()
//                .padding(.horizontal)
//
//
//
//            Button(action: {
//                // Handle candidate button action
//            }) {
//                VStack {
//                    HStack {
//                        Spacer()
//                        Circle()
//                            .frame(width: 80, height: 80)
//                            .foregroundColor(Color(red: 0.722, green: 0.847, blue: 0.847))
//                            .overlay(
//                                Image(systemName: "person.crop.rectangle.stack")
//                                    .foregroundColor(Color(red: 0.31, green: 0.565, blue: 0.565))
//                                    .font(.system(size: 30))
//                            )
//                            .padding(.trailing, 10)
//                    }
//
//                    Text("Candidate")
//                        .bold()
//                        .font(.title)
//                        .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
//                }
//                .padding()
//                .background(
//                    RoundedRectangle(cornerRadius: 30.0)
//                        .foregroundColor(Color(red: 0.835, green: 0.949, blue: 0.949))
//                        .shadow(color: Color(hue: 0.5, saturation: 0.259, brightness: 0.792), radius: 20, x: 0, y: 10)
//                )
//            }
//            .frame(maxWidth: 350)
//            .frame(height: 800 * 0.2)
//            .padding(.horizontal)
//
//            Button(action: {
//                // Handle researcher button action
//            }) {
//                VStack {
//                    HStack {
//                        Spacer()
//                        Circle()
//                            .frame(width: 80, height: 80)
//                            .foregroundColor(Color(red: 1.0, green: 0.545, blue: 0.514, opacity: 0.338))
//                            .overlay(
//                                Image(systemName: "text.book.closed")
//                                    .foregroundColor(Color(red: 1.0, green: 0.545, blue: 0.514))
//                                    .font(.system(size: 30))
//                            )
//                            .padding(.trailing, 10)
//                    }
//
//                    Text("Researcher")
//                        .bold()
//                        .font(.title)
//                        .foregroundColor(Color(red: 1.0, green: 0.529, blue: 0.498))
//                }
//                .padding()
//                .background(
//                    RoundedRectangle(cornerRadius: 30.0)
//                        .foregroundColor(Color(red: 0.98, green: 0.874, blue: 0.867))
//                        .shadow(color: Color(red: 1.0, green: 0.545, blue: 0.514, opacity: 0.712), radius: 20, x: 0, y: 10)
//                )
//            }
//            .frame(maxWidth: 350)
//            .frame(height: UIScreen.main.bounds.height * 0.2)
//            .padding(.horizontal)
//
//            Spacer()
//        }
//        .onAppear {
//            withAnimation {
//                isTextVisible = true
//            }
//        }
//    }
//}
//
//struct Welcome_Previews: PreviewProvider {
//    static var previews: some View {
//        Welcome()
//    }
//}
//









//
//import SwiftUI
//
//struct Welcome: View {
//    var body: some View {
//        VStack {
//            Spacer()
//
//            Text("Welcome to")
//                .font(.largeTitle)
//                .foregroundColor(Color.black)
//                .bold()
//                .padding(.horizontal)
//
//            Text("Reach")
//                .font(.largeTitle).fontDesign(.serif)
//                .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
//                .bold()
//                .padding(.horizontal)
//                .padding(.bottom, 30)
//
//            Text("I am a ").font(.title2)
//                .foregroundColor(Color.black)
//                .bold()
//                .padding(.horizontal)
//
//            Spacer()
//
//            Button(action: {
//                // Handle candidate button action
//            }) {
//                VStack {
//                    HStack {
//                        Spacer()
//                        Circle()
//                            .frame(width: 80, height: 80)
//                            .foregroundColor(Color(red: 0.722, green: 0.847, blue: 0.847))
//                            .overlay(
//                                Image(systemName: "person.crop.rectangle.stack")
//                                    .foregroundColor(Color(red: 0.31, green: 0.565, blue: 0.565))
//                                    .font(.system(size: 30))
//                            )
//                            .padding(.trailing, 10)
//                    }
//
//                    Text("Candidate")
//                        .bold()
//                        .font(.title)
//                        .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
//                }
//                .padding()
//                .background(
//                    RoundedRectangle(cornerRadius: 30.0)
//                        .foregroundColor(Color(red: 0.835, green: 0.949, blue: 0.949))
//                        .shadow(color: Color(hue: 0.5, saturation: 0.259, brightness: 0.792), radius: 20, x: 0, y: 10)
//                )
//            }
//            .frame(maxWidth: 500)
//            .frame(height: 800 * 0.2)
//            .padding(.horizontal)
//
//            Button(action: {
//                // Handle researcher button action
//            }) {
//                VStack {
//                    HStack {
//                        Spacer()
//                        Circle()
//                            .frame(width: 80, height: 80)
//                            .foregroundColor(Color(red: 1.0, green: 0.545, blue: 0.514, opacity: 0.338))
//                            .overlay(
//                                Image(systemName: "text.book.closed")
//                                    .foregroundColor(Color(red: 1.0, green: 0.545, blue: 0.514))
//                                    .font(.system(size: 30))
//                            )
//                            .padding(.trailing, 10)
//                    }
//
//                    Text("Researcher")
//                        .bold()
//                        .font(.title)
//                        .foregroundColor(Color(red: 1.0, green: 0.529, blue: 0.498))
//                }
//                .padding()
//                .background(
//                    RoundedRectangle(cornerRadius: 30.0)
//                        .foregroundColor(Color(red: 0.98, green: 0.874, blue: 0.867))
//                        .shadow(color: Color(red: 1.0, green: 0.545, blue: 0.514, opacity: 0.712), radius: 20, x: 0, y: 10)
//                )
//            }
//            .frame(maxWidth: 500)
//            .frame(height: UIScreen.main.bounds.height * 0.2)
//            .padding(.horizontal)
//
//            Spacer()
//        }
//    }
//}
//
//struct Welcome_Previews: PreviewProvider {
//    static var previews: some View {
//        Welcome()
//    }
//}
//
//
//
//
//
//
//
//
//




//
//import SwiftUI
//
//struct Welcome: View {
//    var body: some View {
//        VStack {
//            Spacer()
//
//            Text("Welcome to \n I am a")
//                .font(.largeTitle)
//                .foregroundColor(Color.black)
//                .bold()
//                .padding(.horizontal)
//
//            Spacer()
//
//            Button(action: {
//                // Handle candidate button action
//            }) {
//                VStack {
//                    HStack {
//                        Spacer()
//                        Circle()
//                            .frame(width: 80, height: 80)
//                            .foregroundColor(Color(red: 0.722, green: 0.847, blue: 0.847))
//                            .overlay(
//                                Image(systemName: "person.crop.rectangle.stack")
//                                    .foregroundColor(Color(red: 0.31, green: 0.565, blue: 0.565))
//                                    .font(.system(size: 30))
//                            )
//                            .padding(.trailing, 10)
//                    }
//
//                    Text("Candidate")
//                        .bold()
//                        .font(.title)
//                        .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
//                }
//                .padding()
//                .background(
//                    RoundedRectangle(cornerRadius: 30.0)
//                        .foregroundColor(Color(red: 0.835, green: 0.949, blue: 0.949))
//                        .shadow(color: Color(hue: 0.5, saturation: 0.259, brightness: 0.792), radius: 20, x: 0, y: 10)
//                )
//            }
//            .frame(maxWidth: 500)
//            .frame(height: 800 * 0.2)
//            .padding(.horizontal)
//
//            Button(action: {
//                // Handle researcher button action
//            }) {
//                VStack {
//                    HStack {
//                        Spacer()
//                        Circle()
//                            .frame(width: 80, height: 80)
//                            .foregroundColor(Color(red: 1.0, green: 0.545, blue: 0.514, opacity: 0.338))
//                            .overlay(
//                                Image(systemName: "text.book.closed")
//                                    .foregroundColor(Color(red: 1.0, green: 0.545, blue: 0.514))
//                                    .font(.system(size: 30))
//                            )
//                            .padding(.trailing, 10)
//                    }
//
//                    Text("Researcher")
//                        .bold()
//                        .font(.title)
//                        .foregroundColor(Color(red: 1.0, green: 0.529, blue: 0.498))
//                }
//                .padding()
//                .background(
//                    RoundedRectangle(cornerRadius: 30.0)
//                        .foregroundColor(Color(red: 0.98, green: 0.874, blue: 0.867))
//                        .shadow(color: Color(red: 1.0, green: 0.545, blue: 0.514, opacity: 0.712), radius: 20, x: 0, y: 10)
//                )
//            }
//            .frame(maxWidth: 500)
//            .frame(height: UIScreen.main.bounds.height * 0.2)
//            .padding(.horizontal)
//
//            Spacer()
//        }
//    }
//}
//
//struct Welcome_Previews: PreviewProvider {
//    static var previews: some View {
//        Welcome()
//    }
//}
//
//
//









////
//import SwiftUI
//
//struct Welcome: View {
//    var body: some View {
//        VStack {
//            Spacer()
//
//            Text("Welcome !\n I am a")
//                .font(.largeTitle)
//                .foregroundColor(Color.black)
//                .bold()
//                .padding(.horizontal)
//
//            Spacer()
//
//            Button(action: {
//                // Handle candidate button action
//            }) {
//                ZStack {
//                    RoundedRectangle(cornerRadius: 30.0)
//                        .foregroundColor(Color(red: 0.835, green: 0.949, blue: 0.949))
//                        .shadow(color: Color(hue: 0.5, saturation: 0.259, brightness: 0.792), radius: 20, x: 0, y: 10)
//
//                    VStack {
//                        Spacer()
//                        Spacer()
//
//                        HStack {
//                            Spacer()
//                            Circle()
//                                .frame(width: 100, height: 100)
//                                .foregroundColor(Color(red: 0.722, green: 0.847, blue: 0.847))
//                                .overlay(
//                                    Image(systemName: "person.crop.rectangle.stack")
//                                        .foregroundColor(Color(red: 0.31, green: 0.565, blue: 0.565))
//                                        .font(.system(size: 30))
//                                )
//                            Spacer()
//                        }
//                    }
//
//                    VStack {
//                        Spacer()
//                        Spacer()
//                        Spacer()
//
//                        HStack {
//                            Spacer()
//                            Text("Candidate")
//                                .bold()
//                                .font(.title)
//                                .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
//                            Spacer()
//                        }
//
//                        Spacer()
//                        Spacer()
//                    }
//                }
//                .frame(maxWidth: .infinity)
//                .frame(height: UIScreen.main.bounds.height * 0.2)
//                .padding(.horizontal)
//            }
//
//            Button(action: {
//                // Handle researcher button action
//            }) {
//                ZStack {
//                    RoundedRectangle(cornerRadius: 30.0)
//                        .foregroundColor(Color(red: 0.98, green: 0.874, blue: 0.867))
//                        .shadow(color: Color(red: 1.0, green: 0.545, blue: 0.514, opacity: 0.712), radius: 20, x: 0, y: 10)
//
//                    VStack {
//                        Spacer()
//                        Spacer()
//
//                        HStack {
//                            Spacer()
//                            Circle()
//                                .frame(width: 100, height: 100)
//                                .foregroundColor(Color(red: 1.0, green: 0.545, blue: 0.514, opacity: 0.338))
//                                .overlay(
//                                    Image(systemName: "text.book.closed")
//                                        .foregroundColor(Color(red: 1.0, green: 0.545, blue: 0.514))
//                                        .font(.system(size: 30))
//                                )
//                            Spacer()
//                        }
//                    }
//
//                    VStack {
//                        Spacer()
//                        Spacer()
//                        Spacer()
//
//                        HStack {
//                            Spacer()
//                            Text("Researcher")
//                                .bold()
//                                .font(.title)
//                                .foregroundColor(Color(red: 1.0, green: 0.529, blue: 0.498))
//                            Spacer()
//                        }
//
//                        Spacer()
//                        Spacer()
//                    }
//                }
//                .frame(maxWidth: .infinity)
//                .frame(height: UIScreen.main.bounds.height * 0.2)
//                .padding(.horizontal)
//            }
//
//            Spacer()
//        }
//    }
//}
//
//struct Welcome_Previews: PreviewProvider {
//    static var previews: some View {
//        Welcome()
//    }
//}
//











//
//import SwiftUI
//
//struct Welcome: View {
//    var body: some View {
//        VStack {
//            Spacer()
//
//            Text("Welcome !\n I am a")
//                .font(.largeTitle)
//                .foregroundColor(Color.black)
//                .bold()
//                .padding(.horizontal)
//
//            Spacer()
//
//            Button(action: {
//                // Handle candidate button action
//            }) {
//                ZStack {
//                    RoundedRectangle(cornerRadius: 30.0)
//                        .foregroundColor(Color(red: 0.835, green: 0.949, blue: 0.949))
//                        .shadow(color: Color(hue: 0.5, saturation: 0.259, brightness: 0.792), radius: 20, x: 0, y: 10)
//
//                    VStack {
//                        Spacer()
//                        Spacer()
//
//                        HStack {
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Circle()
//                                .frame(width: 200, height: 65)
//                                .foregroundColor(Color(red: 0.722, green: 0.847, blue: 0.847))
//                            Spacer()
//                        }
//                        Spacer()
//                        Spacer()
//                    }
//
//                    VStack {
//                        Spacer()
//                        Spacer()
//                        Spacer()
//
//                        HStack {
//                            Spacer()
//                            Text("Candidate")
//                                .bold()
//                                .font(.title)
//                                .foregroundColor(Color(red: 0.31, green: 0.388, blue: 0.388))
//                            Spacer()
//                        }
//
//                        Spacer()
//                        Spacer()
//                    }
//
//                    VStack {
//                        Spacer()
//
//                        HStack {
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//
//                            Button(action: {
//                                // Handle candidate button action
//                            }) {
//                                Image(systemName: "person.crop.rectangle.stack")
//                                    .foregroundColor(Color(red: 0.31, green: 0.565, blue: 0.565))
//                                    .font(.system(size: 30))
//                            }
//
//                            Spacer()
//                            Spacer()
//                        }
//
//                        Spacer()
//                        Spacer()
//                        Spacer()
//                        Spacer()
//                        Spacer()
//                        Spacer()
//                        Spacer()
//                    }
//                }
//                .frame(maxWidth: .infinity)
//                .frame(height: UIScreen.main.bounds.height * 0.2)
//                .padding(.horizontal)
//            }
//
//            Button(action: {
//                // Handle researcher button action
//            }) {
//                ZStack {
//                    RoundedRectangle(cornerRadius: 30.0)
//                        .foregroundColor(Color(red: 0.98, green: 0.874, blue: 0.867))
//                        .shadow(color: Color(red: 1.0, green: 0.545, blue: 0.514, opacity: 0.712), radius: 20, x: 0, y: 10)
//
//                    VStack {
//                        Spacer()
//                        Spacer()
//
//                        HStack {
//                            Spacer()
//                            Circle()
//                                .frame(width: 200, height: 60)
//                                .foregroundColor(Color(red: 1.0, green: 0.545, blue: 0.514, opacity: 0.338))
//                            Spacer()
//                        }
//                    }
//
//                    VStack {
//                        Spacer()
//                        Spacer()
//                        Spacer()
//
//                        HStack {
//                            Spacer()
//                            Text("Researcher")
//                                .bold()
//                                .font(.title)
//                                .foregroundColor(Color(red: 1.0, green: 0.529, blue: 0.498))
//                            Spacer()
//                        }
//
//                        Spacer()
//                        Spacer()
//                    }
//
//                    VStack {
//                        Spacer()
//
//                        HStack {
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//
//                            Button(action: {
//                                // Handle researcher button action
//                            }) {
//                                Image(systemName: "text.book.closed")
//                                    .foregroundColor(Color(red: 1.0, green: 0.545, blue: 0.514))
//                                    .font(.system(size: 30))
//                            }
//
//                            Spacer()
//                            Spacer()
//                        }
//
//                        Spacer()
//                        Spacer()
//                        Spacer()
//                        Spacer()
//                        Spacer()
//                        Spacer()
//                        Spacer()
//                    }
//                }
//                .frame(maxWidth: .infinity)
//                .frame(height: UIScreen.main.bounds.height * 0.2)
//                .padding(.horizontal)
//            }
//
//            Spacer()
//        }
//    }
//}
//
//struct Welcome_Previews: PreviewProvider {
//    static var previews: some View {
//        Welcome()
//    }
//}










//
//
//
//import SwiftUI
//
//struct Welcome: View {
//    var body: some View {
//        VStack {
//            Spacer(minLength: 50)
//
//            HStack{
//                Spacer(minLength: 119)
//                TextEditor(text: .constant("Welcome !\n I am a"))
//                    .font(.largeTitle).foregroundColor(Color.black).bold()
//            }
//            Spacer()
//
//            HStack {
//                Spacer(minLength: 65)
//                Button(action: {
//                    // Handle candidate button action
//                }) {
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 30.0).size(width: 300, height: 200).foregroundColor(Color(red: 0.835, green: 0.9490196078431372, blue: 0.9490196078431372)).shadow(color: Color(hue: 0.5, saturation: 0.259, brightness: 0.792), radius: 20, x: 0, y: 10)
//
//                        VStack {
//                            Spacer()
//                            Spacer()
//                            HStack {
//                                Spacer(minLength: 163)
//                                Circle().size(width: 200, height: 65).foregroundColor(Color(red: 0.722, green: 0.8470588235294118, blue: 0.8470588235294118))
//                            }
//                        }
//
//                        VStack() {
//                            Spacer()
//                            HStack {
//                                Spacer()
//                                Spacer()
//                                Spacer()
//                                Spacer()
//                                Spacer()
//                                Spacer()
//
//                                Button(action: {
//                                    // Handle candidate button action
//                                }) {
//                                    Image(systemName: "person.crop.rectangle.stack")
//                                        .foregroundColor(Color(red: 0.30980392156862746, green: 0.5647058823529412, blue: 0.5647058823529412))
//                                        .font(.system(size: 30))
//                                }
//
//                                Spacer()
//                                Spacer()
//                            }
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                        }
//
//                        VStack {
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            HStack {
//                                Spacer()
//
//                                Text("Candidate")
//                                    .bold()
//                                    .font(.title)
//                                    .foregroundColor(Color(red: 0.30980392156862746, green: 0.38823529411764707, blue: 0.38823529411764707))
//
//                                Spacer()
//                                Spacer()
//                                Spacer()
//                            }
//                            Spacer()
//                            Spacer()
//                        }
//                    }
//                }
//            }
//
//            HStack {
//                Spacer(minLength: 65)
//                Button(action: {
//                    // Handle researcher button action
//                }) {
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 30.0).size(width: 300, height: 200).foregroundColor(Color(red: 0.98, green: 0.8745098039215686, blue: 0.8666666666666667)).shadow(color: Color(red: 1.0, green: 0.5450980392156862, blue: 0.5137254901960784, opacity: 0.712), radius: 20, x: 0, y: 10)
//
//                        VStack {
//                            Spacer()
//                            Spacer()
//                            HStack {
//                                Spacer(minLength: 163)
//                                Circle().size(width: 200, height: 60).foregroundColor(Color(red: 1.0, green: 0.5450980392156862, blue: 0.5137254901960784, opacity: 0.338))
//                            }
//                        }
//
//                        VStack() {
//                            Spacer()
//                            HStack {
//                                Spacer()
//                                Spacer()
//                                Spacer()
//                                Spacer()
//                                Spacer()
//                                Spacer()
//
//                                Button(action: {
//                                    // Handle researcher button action
//                                }) {
//                                    Image(systemName: "text.book.closed")
//                                        .foregroundColor(Color(red: 1.0, green: 0.5450980392156862, blue: 0.5137254901960784))
//                                        .font(.system(size: 30))
//                                }
//
//                                Spacer()
//                                Spacer()
//                            }
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                        }
//
//                        VStack {
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            HStack {
//                                Spacer()
//
//                                Text("Researcher")
//                                    .bold()
//                                    .font(.title)
//                                    .foregroundColor(Color(red: 1.0, green: 0.5294117647058824, blue: 0.4980392156862745))
//
//                                Spacer()
//                                Spacer()
//                                Spacer()
//                            }
//                            Spacer()
//                            Spacer()
//                        }
//                    }
//                }
//            }
//
//            Spacer()
//        }
//    }
//}
//
//struct Welcome_Previews: PreviewProvider {
//    static var previews: some View {
//        Welcome()
//
//
//
//    }
//}
















//import SwiftUI
//
//struct Welcome: View {
//    var body: some View {
//
//            VStack{
//                TextEditor(text: .constant("Welcome !\n I am a"))
//                    .font(.largeTitle).offset(x: 115 ,y: 70).foregroundColor(Color.black).bold()
//                    Spacer()
//
//
//
//
//                HStack{
//                    Spacer(minLength: 65)
//                    ZStack{
//
//
//
//                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/30.0/*@END_MENU_TOKEN@*/).size(width: 300, height: 200).foregroundColor(Color(red: 0.835, green: 0.9490196078431372, blue: 0.9490196078431372)).shadow(color: Color(hue: 0.5, saturation: 0.259, brightness: 0.792) ,radius: 20, x:0,y:10)
//
//                        VStack{
//                            Spacer()
//                             Spacer()
//                            HStack{
//                                Spacer(minLength: 163)
//                                Circle().size(width: 200, height:65 ).foregroundColor(Color(red: 0.722, green: 0.8470588235294118, blue: 0.8470588235294118))
//                            }}
//
//                        VStack(){
//                           Spacer()
//                            HStack{
//                               Spacer()
//                                 Spacer()
//                                    Spacer()
//                                      Spacer()
//                                        Spacer()
//                                         Spacer()
//
//
//                                Image(systemName: "person.crop.rectangle.stack").foregroundColor(Color(red: 0.30980392156862746, green: 0.5647058823529412, blue: 0.5647058823529412)).font(.system(size: 30))
//                               Spacer()
//                            Spacer()
//
//
//
//                            }
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//
//
//                        }
//
//                        VStack{
//                           Spacer()
//                            Spacer()
//                            Spacer()
//                            HStack{
//                                Spacer()
//
//                                Text("Candidate").bold().font(.title).foregroundColor(Color(red: 0.30980392156862746, green: 0.38823529411764707, blue: 0.38823529411764707))
//                                Spacer()
//                                Spacer()
//                                Spacer()
//                            }
//                            Spacer()
//                            Spacer()
//                        }
//
//
//                    }
//
//                }
//
//
//
//
//                HStack{
//                    Spacer(minLength: 65)
//                    ZStack{
//
//
//
//                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/30.0/*@END_MENU_TOKEN@*/).size(width: 300, height: 200).foregroundColor(Color(red: 0.98, green: 0.8745098039215686, blue: 0.8666666666666667)).shadow(color: Color(red: 1.0, green: 0.5450980392156862, blue: 0.5137254901960784, opacity: 0.712),radius: 20,x: 0 ,y:10)
//
//                        VStack{
//                            Spacer()
//                             Spacer()
//                            HStack{
//                                Spacer(minLength: 163)
//                                Circle().size(width: 200, height:60 ).foregroundColor(Color(red: 1.0, green: 0.5450980392156862, blue: 0.5137254901960784, opacity: 0.338))
//                            }}
//
//                        VStack(){
//                           Spacer()
//                            HStack{
//                               Spacer()
//                                 Spacer()
//                                    Spacer()
//                                      Spacer()
//                                        Spacer()
//                                         Spacer()
//
//
//                                Image(systemName: "text.book.closed").foregroundColor(Color(red: 1.0, green: 0.5450980392156862, blue: 0.5137254901960784)).font(.system(size: 30))
//
//                               Spacer()
//                            Spacer()
//
//
//
//                            }
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
//
//
//                        }
//
//                        VStack{
//                           Spacer()
//                            Spacer()
//                            Spacer()
//                            HStack{
//                                Spacer()
//
//                                Text("Researcher").bold().font(.title).foregroundColor(Color(red: 1.0, green: 0.5294117647058824, blue: 0.4980392156862745))
//                                Spacer()
//                                Spacer()
//                                Spacer()
//                            }
//                            Spacer()
//                            Spacer()
//                        }
//
//
//                    }
//
//                }
//
//
//
//            }
//
//    }
//}
//
//struct Welcome_Previews: PreviewProvider {
//    static var previews: some View {
//        Welcome()
//    }
//}
