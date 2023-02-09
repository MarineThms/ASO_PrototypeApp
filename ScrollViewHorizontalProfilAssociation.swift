//
//  ScrollViewHorizontalProfilAssociation.swift
//  ProjetAso
//
//  Created by Apprenant 06 on 06/02/2023.
//

import SwiftUI

struct ScrollViewHorizontalProfilAssociation: View {
    
    let rows = [
        GridItem(.flexible()),
    ]
    
    var nameAssociation: String
    var body: some View {
        
        NavigationStack{
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 20) {
                    ForEach(offresBenevolat.filter({ offre in
                        offre.nameAssociation == nameAssociation
                    })){ offreBenevolat in
                        NavigationLink(destination: EcranDetailPostuler(offreBenevolat: offreBenevolat)) {
                            ZStack (alignment: .top){
                                Rectangle()
                                    .fill(.white)
                                    .frame(width: 190, height: 230)
                                VStack{
                                    ZStack (alignment: .topTrailing){
                                        Image(offreBenevolat.imageOffre)
                                            .resizable()
                                            .frame(width: 190, height: 120)
                                        RoundedRectangle(cornerRadius: 5)
                                            .foregroundColor(Color("ColorVertBouton"))
                                            .frame(width: 50, height: 40)
                                            .offset(x: -7, y: 7)
                                        VStack {
                                            Text("15.03.")
                                                .foregroundColor(.black)
                                                .offset(x: -10, y: 10)
                                                .font(.system(size: 12))
                                            Text("2023")
                                                .foregroundColor(.black)
                                                .offset(x: -10, y: 10)
                                                .font(.system(size: 16))
                                                .fontWeight(.bold)
                                        }
                                    }
                                    Text(offreBenevolat.titreMission)
                                        .font(.system(size: 14))
                                        .fontWeight(.bold)
                                        .frame(width: 150, height: 50)
                                        .foregroundColor(.black)
                                }
                            }
                        } .cornerRadius(11)
                            .shadow(radius: 3, x:0, y:3)
                    }
                }
                .padding(.horizontal)
            }
            .frame(height: 250)
        }
    }
}

struct ScrollViewHorizontalProfilAssociation_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewHorizontalProfilAssociation(nameAssociation: "Le Secours Populaire")
    }
}
