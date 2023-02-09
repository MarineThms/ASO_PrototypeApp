//
//   EcranOffres.swift
//  Aso
//
//  Created by sarah iglla on 01/02/2023.
//

import SwiftUI

struct EcranOffres: View {
    @State var searchText: String = ""
    @State private var isliked = false
    @State var OffreButton = "+ Voir l'offre"
    @State var selection: String = ""
    let filterOption: [String] = [ " Nos offres", "Bénevolat", "Missions"
    ]
    var offreBenevolat: OffreBenevolat
//    var associationType: AssociationProperty
    var body: some View {
        
        ZStack {
            Color("ColorVertFond")
            VStack {
                header()
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .shadow(radius: 5)
                        .frame(height: 45)
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.gray)
                            .padding(3)
                        TextField("Recherche", text: $searchText)
                    }
                    .padding(10)
                }
                HStack{
                    Picker(
                        selection: $selection,
                        label:
                            HStack {
                                Text("Toutes nos offres")
                                Text(selection)
                                    
                            }
                            //.padding()
                            .padding(8)
                            .background(Color.black),
                        
                        content:  {
                            ForEach(filterOption, id: \.self) { option in
                                Text(option)
                                    .tag(option)
                            }
                        })
                    .frame(width: 160, height: 26)
                    .padding(11)
                    .background(Color("ColorJaune"))
                    .cornerRadius(10)
                    
                    Button{}
                    label: {
                        Text("Faire un don")
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(14)
                            .padding(.horizontal)
                            .background(Color("ColorVertBouton"))
                            .cornerRadius(10)
                    }
                    .frame(height: 100)
                }
                
//**************Encart offres
                ScrollViewVerticalOffre(OffreButton: $OffreButton, isliked: $isliked)
                
            }
            .padding()
            }
        .ignoresSafeArea()
        }
            }
struct Offres: View {
//@State var OffreButton: String
    var body: some View {
        NavigationLink(destination: EcranDetailPostuler(offreBenevolat: offresBenevolat[0])){
            HStack{
                Image(systemName: "plus.circle")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(Color("ColorTextNoir"))
                Text("Voir l'offre")
                    .font(.caption)
                    .foregroundColor(.black)
            }
            .padding(9)
            .background(Color("ColorJaune"))
            .cornerRadius(10)
        }
    }
}
struct HeartButton: View {
    @State var isliked: Bool
    
    var body: some View {
        Button (action: {
            self.isliked.toggle()
        }, label: {
            Image(systemName: isliked ? "heart.fill" : "heart")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 20, height: 20)
                .foregroundColor(isliked ? .red : .gray)
                
        })
    }
}
struct EcranOffres_Previews: PreviewProvider {
    static var previews: some View {
        EcranOffres(offreBenevolat: offresBenevolat[0])
    }
}
