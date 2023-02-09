//
//  EcranDetailProfilElement.swift
//  EcranProfilUtilisateur
//
//  Created by Apprenant 07 on 02/02/2023.
//

import SwiftUI
struct EcranDetailProfilElement: View{
    var detailElement: ElementProfil
    var body: some View{
        ZStack{
            Color("ColorVertFond")
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image(systemName: detailElement.icon)
                        .foregroundColor(.black)
                    Text(detailElement.name)
                        .fontWeight(.bold)
                }
                .font(.title)
                Spacer()
                Text("Oops, il n'y a pas de \(detailElement.name) pour le moment !!")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                Image("Empty")
                    .resizable()
                    .frame(width: 250, height: 230)
                Spacer()
            }
            .padding()
        }
    }
}
struct EcranDetailProfilElement_Previews : PreviewProvider{
    static var previews: some View{
        EcranDetailProfilElement(detailElement: elements[0])
    }
}
