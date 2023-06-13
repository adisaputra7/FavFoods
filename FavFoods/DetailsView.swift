//
//  DetailsView.swift
//  FavFoods
//
//  Created by Nur Hadi Saputra on 09/06/23.
//

import SwiftUI

//Model Data

struct DetailProductModel : Identifiable {
    
    let id : Int
    let imageFood : String
    let titleFood : String
    let catFood : String
    let rateFood : String
    let desFood : String
    let bundleFoods : [String]
    let priceFood : String
    
    init(id: Int, imageFood: String, titleFood: String, catFood: String, rateFood: String, desFood: String, bundleFoods: [String], priceFood: String) {
        self.id = id
        self.imageFood = imageFood
        self.titleFood = titleFood
        self.catFood = catFood
        self.rateFood = rateFood
        self.desFood = desFood
        self.bundleFoods = bundleFoods
        self.priceFood = priceFood
    }
}



struct DetailsView: View {
   
    // dataset
    let data : [DetailProductModel] = [
        DetailProductModel(id:1, imageFood: "gyoza_photo", titleFood: "Gyoza Sapi", catFood: "Meal", rateFood: "4.8", desFood: "Makanan asal Bandung dengan tekstur yang lembut sehingga ketika dimakan rasanya tidak sakit tenggorokan.", bundleFoods: ["bundle_one","bundle_two","bundle_three"], priceFood: "45.000")
    ]
    
    var body: some View {
        NavigationView{
            ForEach(data) { datum in
                detailContent(data: datum)
            }
        }
    }
}


struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}


struct detailContent : View {
    
    let data : DetailProductModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0){
            Image(self.data.imageFood)
                .padding(.top, 30.0)
                .padding(.bottom, 20.0)
            
            HStack(spacing: 0.0){
                VStack(alignment: .leading, spacing: 0.0){
                    Text(self.data.titleFood)
                        .font(.custom("Poppins-Bold", size: 22))
                        .foregroundColor(Color("Navy"))
                    Text(self.data.catFood)
                        .font(.custom("Poppins-Reguler", size: 16))
                        .foregroundColor(Color("Grey"))
                        .padding(.top, 6.0)
                }
                Spacer()
                HStack(spacing: 0.0){
                    Text(self.data.rateFood)
                        .font(.custom("Poppins-Medium", size: 16))
                        .foregroundColor(Color("Navy"))
                        .padding(.trailing, 4.0)
                    Image("icon_star")
                }
            }
            Text(self.data.desFood)
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
                    ForEach(self.data.bundleFoods, id: \.self) {
                        bundleFood in
                        Image(bundleFood)
                            .padding(.trailing, 16.0)
                    }
                }
            }
            Spacer()
            
            HStack{
                VStack(spacing: 0.0){
                    Text("Rp \(self.data.priceFood)")
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
