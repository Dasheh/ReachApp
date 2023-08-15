//
//  SplashView.swift
//  Reach
//
//  Created by Fay Hussain on 16/01/1445 AH.
//
//


import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false
    @State var scale: CGFloat = 0.2 // Initial scale value

    var body: some View {
        VStack {
            if self.isActive {
                Welcome()
            } else {
                Image("ReachLogo")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(scale) // Apply the scale effect
                    .opacity(Double(1 - scale)) // Fade out based on scale
                    .animation(.easeIn(duration: 2)) // Animation duration

                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                self.isActive = true

                            }
                        }
                        withAnimation(.easeIn) {
                            self.scale = 1.0 // Final scale value
                        }
                    }
            }
        }
    }
}



struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
//-----------------------------------------------------------------------------------------
//

//import SwiftUI
//
//struct SplashView: View {
//    @State var isActive:Bool = false
//    var body: some View {
//
//        VStack {
//            // 2.
//            if self.isActive {
//                // 3.
//                Welcome()
//            } else {
//                // 4.
//
//                Image("Logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 300,height: 300)
//            }
//        }
//        // 5.
//        .onAppear {
//            // 6.
//            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//                // 7.
//                withAnimation {
//                    self.isActive = true
//                }
//            }
//
//        }
//    }
//
//    struct SplashView_Previews: PreviewProvider {
//        static var previews: some View {
//            SplashView()
//        }
//    }
//}
