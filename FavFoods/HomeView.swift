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
        
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(alignment: .leading, spacing: 0.0){
                HStack{
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
                VStack(alignment: .center){
                    Text("What do you want\nfor lunch?")
                        .font(.custom("Poppins-SemiBold", size: 22))
                        .foregroundColor(Color("Navy"))
                        .multilineTextAlignment(.center)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 66, maxHeight: 66)
                .padding(.top, 30.0)
                .padding(.bottom, 24.0)
                
                HStack{
                    TextField("Search pizza, burger, kebab etc ...", text: $searchFood)
                        .disableAutocorrection(true)
                        .padding(.leading, 24.0)
                    Image(systemName: "magnifyingglass")
                        .opacity(0.5)
                        .padding(.trailing, 10.0)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50)
                .background(Color("SoftGrey"))
                .cornerRadius(50.0)
                
                VStack(alignment: .leading, spacing: 0.0){
                    Text("Categories")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("Navy"))
                        .padding(.bottom, 12.0)
                    
                    ScrollView(.horizontal, showsIndicators: false,
                        content:{
                        HStack{
                            HStack{
                                Image("cate_bread")
                                    .padding(.vertical, 5.0)
                                    .padding(.leading, 5.0)
                                Text("Bread")
                                    .font(.custom("Poppins-Medium", size: 16))
                                    .foregroundColor(Color("Navy"))
                                    .padding(.trailing, 18.0)
                            }
                            .background(Color("SoftGrey"))
                            .cornerRadius(50.0)
                            
                            HStack{
                                Image("cate_carrot")
                                    .padding(.vertical, 5.0)
                                    .padding(.leading, 5.0)
                                Text("Healthy")
                                    .font(.custom("Poppins-Medium", size: 16))
                                    .foregroundColor(Color("Navy"))
                                    .padding(.trailing, 18.0)
                            }
                            .background(Color("SoftGrey"))
                            .cornerRadius(50.0)
                            
                            HStack{
                                Image("cate_donut")
                                    .padding(.vertical, 5.0)
                                    .padding(.leading, 5.0)
                                Text("Sweets")
                                    .font(.custom("Poppins-Medium", size: 16))
                                    .foregroundColor(Color("Navy"))
                                    .padding(.trailing, 18.0)
                            }
                            .background(Color("SoftGrey"))
                            .cornerRadius(50.0)
                            
                            HStack{
                                Image("cate_bread")
                                    .padding(.vertical, 5.0)
                                    .padding(.leading, 5.0)
                                Text("Fruits")
                                    .font(.custom("Poppins-Medium", size: 16))
                                    .foregroundColor(Color("Navy"))
                                    .padding(.trailing, 18.0)
                            }
                            .background(Color("SoftGrey"))
                            .cornerRadius(50.0)
                            
                            HStack{
                                Image("cate_bread")
                                    .padding(.vertical, 5.0)
                                    .padding(.leading, 5.0)
                                Text("Crossaint")
                                    .font(.custom("Poppins-Medium", size: 16))
                                    .foregroundColor(Color("Navy"))
                                    .padding(.trailing, 18.0)
                            }
                            .background(Color("SoftGrey"))
                            .cornerRadius(50.0)
                        }
                    })
                }
                .padding(.top, 30.0)
                
//                Most Ordered
                VStack(alignment: .leading, spacing: 0.0) {
                    Text("Most Ordered")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("Navy"))
                        .padding(.bottom, 12.0)
                    
                    HStack(spacing: 0.0){
                        Image("food_orange")
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text("Orange Asem")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.bottom, 4.0)
                            Text("Healthy")
                                .font(.custom("Poppins-Reguler", size: 14))
                                .foregroundColor(Color("Grey"))
                        }
                        .padding(.leading, 16.0)
                        Spacer()
                        HStack{
                            Text("4.5")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                            Image("icon_star")
                        }
                    }
                    .padding(.bottom, 18.0)
                    
                    HStack(spacing: 0.0){
                        Image("food_gyoza")
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text("Gyoza Sapi")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.bottom, 4.0)
                            Text("Meal")
                                .font(.custom("Poppins-Reguler", size: 14))
                                .foregroundColor(Color("Grey"))
                        }
                        .padding(.leading, 16.0)
                        Spacer()
                        HStack{
                            Text("4.5")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                            Image("icon_star")
                        }
                    }
                    .padding(.bottom, 18.0)
                    
                    HStack(spacing: 0.0){
                        Image("food_avocado")
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text("Avocado Salad")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.bottom, 4.0)
                            Text("Healthy")
                                .font(.custom("Poppins-Reguler", size: 14))
                                .foregroundColor(Color("Grey"))
                        }
                        .padding(.leading, 16.0)
                        Spacer()
                        HStack{
                            Text("4.5")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                            Image("icon_star")
                        }
                    }
                    .padding(.bottom, 18.0)
                    
                    HStack(spacing: 0.0){
                        Image("food_avocado")
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text("Avocado Salad")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.bottom, 4.0)
                            Text("Healthy")
                                .font(.custom("Poppins-Reguler", size: 14))
                                .foregroundColor(Color("Grey"))
                        }
                        .padding(.leading, 16.0)
                        Spacer()
                        HStack{
                            Text("4.5")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                            Image("icon_star")
                        }
                    }
                    .padding(.bottom, 18.0)
                }
                .padding(.top, 30.0)

//              Newest Foods
                VStack(alignment: .leading, spacing: 0.0) {
                    Text("Newest Foods")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("Navy"))
                        .padding(.bottom, 12.0)
                    
                    HStack(spacing: 0.0){
                        Image("food_orange")
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text("Orange Asem")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.bottom, 4.0)
                            Text("Healthy")
                                .font(.custom("Poppins-Reguler", size: 14))
                                .foregroundColor(Color("Grey"))
                        }
                        .padding(.leading, 16.0)
                        Spacer()
                        HStack{
                            Text("4.5")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                            Image("icon_star")
                        }
                    }
                    .padding(.bottom, 18.0)
                    
                    HStack(spacing: 0.0){
                        Image("food_gyoza")
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text("Gyoza Sapi")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.bottom, 4.0)
                            Text("Meal")
                                .font(.custom("Poppins-Reguler", size: 14))
                                .foregroundColor(Color("Grey"))
                        }
                        .padding(.leading, 16.0)
                        Spacer()
                        HStack{
                            Text("4.5")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("Navy"))
                            Image("icon_star")
                        }
                    }
                    .padding(.bottom, 18.0)
                }
                .padding(.top, 30.0)
            }
            .padding(.horizontal, 24.0)
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
