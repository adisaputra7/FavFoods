//
//  HomeView.swift
//  FavFoods
//
//  Created by Nur Hadi Saputra on 09/06/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchFood: String = ""
    
    var body: some View {
        VStack{
            HStack(alignment: .center){
                Image("user_photo")
                Spacer()
                VStack(alignment: .trailing){
                    Text("Howdy")
                        .font(.custom("Poppins-Reguler", size: 14))
                        .foregroundColor(Color("Grey"))
                    Text("Luna Polar")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("Navy"))
                }
            }
            .padding(.horizontal, 24.0)
            
            Text("What do you want\nfor lunch?")
                .font(.custom("Poppins-SemiBold", size: 22))
                .foregroundColor(Color("Navy"))
                .multilineTextAlignment(.center)
                .padding(.top, 30.0)
            
            HStack{
                TextField("Search pizza, burger, kebab etc ...", text: $searchFood)
                    .disableAutocorrection(true)
                    .padding(.leading, 24.0)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50)
            .background(Color("SoftGrey"))
            .cornerRadius(50.0)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
