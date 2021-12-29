//
//  HomePageView.swift
//  drugInfo
//
//  Created by Abdullah Ridwan on 12/29/21.
//

import SwiftUI

struct HomePageView: View {
    private let drugs = ["Tylenol", "NyQuil", "Advil"]
    var body: some View {
        ZStack {
            Color("Bg")
                .edgesIgnoringSafeArea(.all)

            
            VStack(alignment: .leading) {
                SearchBar()
                ScrollView{
                    ForEach(drugs, id:\.self){drug in
                        DrugCard(name: drug)
                    }
                }
            }
        
        
        
        
        }
        
        
        
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

struct SearchBar: View {
    @State private var search: String = ""
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass.circle.fill")
                .padding(.trailing, 8)
                .foregroundColor(Color("TextColor"))
            TextField("Search....", text: $search)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10.0)
        .padding(.horizontal)
        .padding(.top, 30)
        .padding(.bottom, 40)
    }
}

struct DrugCard: View {
    let name: String
    var body: some View {
        Button(action: {}) {
            HStack{
                Text(name)
                    .font(.title3)
                    .foregroundColor(Color("TextColor"))
                    .padding(.leading, 20)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(Color("TextColor"))
                    .padding(.trailing, 20)
            }
            .padding(10)
            .background(Color("CardColor"))
            .cornerRadius(10.0)
            .padding(.horizontal)
            .padding(.vertical, 10)
        }
    }
}
