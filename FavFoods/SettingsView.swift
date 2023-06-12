//
//  SettingsView.swift
//  FavFoods
//
//  Created by Nur Hadi Saputra on 12/06/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView{
            Form{
                //Section foto profile
                Section(){
                    HStack{
                        Image("pp")
                            .resizable()
                            .frame(width: 50, height:50)
                            .clipShape(Circle())
                        VStack(alignment: .leading){
                            Text("Nur Hadi Saputra")
                                .font(.headline)
                            Text("Premium Account")
                                .font(.caption)
                        }
                    }.padding(.vertical, 10)
                }
                
                //Section Account Setting
                Section(header: Text("Account Settings")){
                    HStack(spacing: 20){
                        Image(systemName: "list.clipboard.fill")
                            .frame(width: 35, height: 35)
                            .background(Color("Navy"))
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        Text("My Orders")
                    }
                    
                    HStack(spacing: 20){
                        Image(systemName: "giftcard.fill")
                            .frame(width: 35, height: 35)
                            .background(Color("Navy"))
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        Text("Promos")
                    }
                    
                    HStack(spacing: 20){
                        Image(systemName: "creditcard.fill")
                            .frame(width: 35, height: 35)
                            .background(Color("Navy"))
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        Text("Payment Method")
                    }
                    
                    HStack(spacing: 20){
                        Image(systemName: "globe")
                            .frame(width: 35, height: 35)
                            .background(Color("Navy"))
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        Text("Change Languange")
                    }
                }
                
                //Section General Setting
                Section(header: Text("General Settings")){
                    HStack(spacing: 20){
                        Image(systemName: "bell.fill")
                            .frame(width: 35, height: 35)
                            .background(Color("Navy"))
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        Text("Notifications")
                    }
                    
                    HStack(spacing: 20){
                        Image(systemName: "questionmark.circle.fill")
                            .frame(width: 35, height: 35)
                            .background(Color("Navy"))
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        Text("FAQ & Help")
                    }
                    
                    HStack(spacing: 20){
                        Image(systemName: "exclamationmark.shield.fill")
                            .frame(width: 35, height: 35)
                            .background(Color("Navy"))
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        Text("Term & privacy")
                    }
                }
                
                Section(){
                    HStack(spacing: 20){
                        Image(systemName: "arrow.right.square.fill")
                            .frame(width: 35, height: 35)
                            .background(Color("Navy"))
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        Text("Log out")
                    }
                }
                
            }.navigationBarTitle("Setting")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
