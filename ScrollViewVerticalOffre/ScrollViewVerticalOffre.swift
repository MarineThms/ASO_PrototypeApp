//
//  ScrollViewVerticalOffre.swift
//  EcranGeolocalisation2
//
//  Created by Apprenant 07 on 08/02/2023.
//

import SwiftUI
struct ScrollViewVerticalOffre: View {
    @Binding var OffreButton: String
    @Binding var isliked: Bool
    var body : some View {
        ScrollView {
            ForEach(offresBenevolat){ offres in
                VStack(){
                    ZStack(alignment: .center){
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:351,height: 125)
                            .foregroundColor(Color.white)
                            .shadow(radius: 2)
                        VStack(alignment: .trailing){
                            HStack{
                                Image(offres.logoAssociation)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                
                                VStack(alignment: .leading){
                                    Text(offres.nameAssociation)
                                        .font(.title3)
                                    Text(offres.titreMission)
                                        .font(.caption)
                                }
                                Spacer()
                                HeartButton(isliked: offres.isliked)
                                //                                            .padding()
                                    .padding(.bottom)
                                    .offset(x:-5,y:-5)
                                
                            }
                            Spacer()
                            Spacer()
                            
                            HStack{
                                HStack{
                                    Image(systemName: "eurosign.circle")
                                        .foregroundColor(Color("ColorTextNoir"))
                                    Text("Faire un don")
                                        .font(.caption)
                                        .foregroundColor(Color("ColorTextNoir"))
                                }
                                .padding(6)
                                .background(Color("ColorVertBouton"))
                                .cornerRadius(10)
                                //                                        Spacer()
//                                Offres(OffreButton: offres.OffreButton)
                            }
                        }
                        .padding()
                    }
                }
                //End encart offres
            }
        }
    }
}
