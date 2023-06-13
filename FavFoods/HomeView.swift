//
//  HomeView.swift
//  FavFoods
//
//  Created by Nur Hadi Saputra on 09/06/23.
//

import SwiftUI

struct ProfileModel : Identifiable {
    let id: Int
    let imageProfile: String
    let firstName: String
    let LastName: String
    
    init(id: Int, imageProfile: String, firstName: String, LastName: String) {
        self.id = id
        self.imageProfile = imageProfile
        self.firstName = firstName
        self.LastName = LastName
    }
}

struct CategoryModel : Identifiable {
    let id: Int
    let catImage: String
    let catName: String
    
    init(id: Int, catImage: String, catName: String) {
        self.id = id
        self.catImage = catImage
        self.catName = catName
    }
}

struct ProductsModel : Identifiable {
    let id: Int
    let imageProduct: String
    let nameProduct: String
    let catName: String
    let rating: String
    
    init(id: Int, imageProduct: String, nameProduct: String, catName: String, rating: String) {
        self.id = id
        self.imageProduct = imageProduct
        self.nameProduct = nameProduct
        self.catName = catName
        self.rating = rating
    }
}


struct HomeView: View {
    
    let dataProfile: [ProfileModel] = [ProfileModel(id: 1, imageProfile: "user_photo", firstName: "Howdy", LastName: "Luna Polar")]
    
    let dataCategory: [CategoryModel] = [
        CategoryModel(id: 1, catImage: "cate_bread", catName: "Bread"),
        CategoryModel(id: 2, catImage: "cate_carrot", catName: "Healthy"),
        CategoryModel(id: 3, catImage: "cate_donut", catName: "Sweets"),
        CategoryModel(id: 4, catImage: "cate_bread", catName: "Fruits"),
        CategoryModel(id: 5, catImage: "cate_bread", catName: "Crossaint")
    ]
    
    let dataProduct: [ProductsModel] = [
        ProductsModel(id: 1, imageProduct: "food_orange", nameProduct: "Orange Asem", catName: "Healthy", rating: "4.7"),
        ProductsModel(id: 2, imageProduct: "food_gyoza", nameProduct: "Gyoza Sapi", catName: "Meal", rating: "4.5"),
        ProductsModel(id: 3, imageProduct: "food_avocado", nameProduct: "Avocado Salad", catName: "Healthy", rating: "4.5"),
        ProductsModel(id: 4, imageProduct: "food_avocado", nameProduct: "Avocado Salad", catName: "Healthy", rating: "4.5")
    ]
    
    let dataNewProduct: [ProductsModel] = [
        ProductsModel(id: 2, imageProduct: "food_gyoza", nameProduct: "Gyoza Sapi", catName: "Meal", rating: "4.5"),
        ProductsModel(id: 3, imageProduct: "food_avocado", nameProduct: "Avocado Salad", catName: "Healthy", rating: "4.5"),
    ]
    
    
    @State private var searchFood: String = ""
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .leading, spacing: 0.0){
                    NavigationLink(destination: SettingsView()){
                        ForEach(dataProfile) { profile in
                            HStack{
                                Profile(data: profile)
                            }
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
                                    ForEach(dataCategory) { category in
                                        Category(data: category)
                                    }
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
                        
                        ForEach(dataProduct){ product in
                            Product(data: product)
                        }
                    }
                    .padding(.top, 30.0)

    //              Newest Foods
                    VStack(alignment: .leading, spacing: 0.0) {
                        Text("Newest Foods")
                            .font(.custom("Poppins-SemiBold", size: 16))
                            .foregroundColor(Color("Navy"))
                            .padding(.bottom, 12.0)
                        
                        ForEach(dataNewProduct){ productNew in
                            Product(data: productNew)
                        }
                        
                    }
                    .padding(.top, 30.0)
                }
                .padding(.horizontal, 24.0)
            })
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



struct Profile: View {
    let data : ProfileModel
    
    var body: some View {
            Image(self.data.imageProfile)
            Spacer()
            VStack(alignment: .trailing){
                Text(self.data.firstName)
                    .font(.custom("Poppins-Reguler", size: 14))
                    .foregroundColor(Color("Grey"))
                Text(self.data.LastName)
                    .font(.custom("Poppins-SemiBold", size: 16))
                    .foregroundColor(Color("Navy"))
        }
    }
}


struct Category: View {
    let data : CategoryModel
    
    var body: some View {
        HStack {
            Image(self.data.catImage)
                    .padding(.vertical, 5.0)
                    .padding(.leading, 5.0)
            Text(self.data.catName)
                    .font(.custom("Poppins-Medium", size: 16))
                    .foregroundColor(Color("Navy"))
                    .padding(.trailing, 18.0)
        }.background(Color("SoftGrey"))
        .cornerRadius(50.0)
    }
}


struct Product : View {
    let data : ProductsModel
    
    var body: some View {
        HStack(spacing: 0.0){
            Image(self.data.imageProduct)
            VStack(alignment: .leading, spacing: 0.0) {
                Text(self.data.nameProduct)
                    .font(.custom("Poppins-Medium", size: 16))
                    .foregroundColor(Color("Navy"))
                    .padding(.bottom, 4.0)
                Text(self.data.catName)
                    .font(.custom("Poppins-Reguler", size: 14))
                    .foregroundColor(Color("Grey"))
            }
            .padding(.leading, 16.0)
            Spacer()
            HStack{
                Text("\(self.data.rating)")
                    .font(.custom("Poppins-Medium", size: 16))
                    .foregroundColor(Color("Navy"))
                Image("icon_star")
            }
        }
        .padding(.bottom, 18.0)
    }
}
