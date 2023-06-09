//
//  DetailsView.swift
//  FavFoods
//
//  Created by Nur Hadi Saputra on 09/06/23.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 0.0){
                Image("gyoza_photo")
                    .padding(.top, 30.0)
                    .padding(.bottom, 20.0)
                
                HStack(spacing: 0.0){
                    VStack(alignment: .leading, spacing: 0.0){
                        Text("Gyoza Sapi")
                            .font(.custom("Poppins-Bold", size: 22))
                            .foregroundColor(Color("Navy"))
                        Text("Meal")
                            .font(.custom("Poppins-Reguler", size: 16))
                            .foregroundColor(Color("Grey"))
                            .padding(.top, 6.0)
                    }
                    Spacer()
                    HStack(spacing: 0.0){
                        Text("4.8")
                            .font(.custom("Poppins-Medium", size: 16))
                            .foregroundColor(Color("Navy"))
                            .padding(.trailing, 4.0)
                        Image("icon_star")
                    }
                }
                Text("Makanan asal Bandung dengan tekstur yang lembut sehingga ketika dimakan rasanya tidak sakit tenggorokan.")
                    .font(.custom("Poppins-Reguler", size: 16))
                    .foregroundColor(Color("Navy"))
                    .padding(.top, 16.0)
                    .padding(.bottom, 20.0)
                    .lineSpacing(5.0)
                
                VStack(alignment: .leading, spacing: 0.0){
                    Text("Bundle")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("Navy"))
                        .padding(.bottom, 20.0)
                    
                    HStack(spacing: 0.0){
                        Image("bundle_one")
                            .padding(.trailing, 16.0)
                        Image("bundle_two")
                            .padding(.trailing, 16.0)
                        Image("bundle_three")
                            .padding(.trailing, 16.0)
                    }
                }
                Spacer()
                
                HStack{
                    VStack(spacing: 0.0){
                        Text("$808.00")
                            .font(.custom("Poppins-Bold", size: 22))
                            .foregroundColor(Color("Navy"))
                            .padding(.bottom, 6.0)
                        Text("/porsi")
                            .font(.custom("Poppins-Reguler", size: 14))
                            .foregroundColor(Color("Grey"))
                    }
                    Spacer()
                    Button(action: {
                        print("Get Started")
                    }, label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 190, height: 50)
                                .foregroundColor(Color("Orange"))
                            Text("Order Now")
                                .foregroundColor(Color("White"))
                                .font(.custom("Poppins-SemiBold", size: 16))
                        }
                    })
                }
                
            }.padding(.horizontal, 24.0)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
