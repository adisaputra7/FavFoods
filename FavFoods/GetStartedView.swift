//
//  GetStartedView.swift
//  FavFoods
//
//  Created by Nur Hadi Saputra on 09/06/23.
//

import SwiftUI

struct GetStartedView: View {
    
    @State private var showHomePage = false
    
    var body: some View {
        
        return Group {
            if showHomePage {
                HomeView()
            }
            else {
                VStack(spacing: 0.0){
                    Image("onboarding_illustration")
                        .padding(.bottom, 50.0)
                    HStack{
                        VStack(alignment: .leading, spacing: 0.0){
                            Text("180K Store")
                                .font(.custom("Poppins-Reguler", size: 16))
                                .foregroundColor(Color("Grey"))
                            Text("Order Your\nFavorite Foods")
                                .font(.custom("Poppins-Bold", size: 36))
                                .foregroundColor(Color("Navy"))
                            Button(action: {
                                self.showHomePage = true
                            }, label:{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 50)
                                        .frame(width: 323, height: 50)
                                        .foregroundColor(Color("Orange"))
                                    Text("Explore Now")
                                        .foregroundColor(Color("White"))
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                }
                            })
                            .padding(.top, 30.0)
                        }
                    }
                }
            }
        }
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
