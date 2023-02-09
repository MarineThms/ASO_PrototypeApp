//
//  Header.swift
//  EcranProfilUtilisateur
//
//  Created by Apprenant 07 on 07/02/2023.
//

import SwiftUI
struct header: View{
    var body: some View{
        HStack{
            NavigationLink(destination: EcranQuiSommesNous()){
                Image("LogoAso")
                    .resizable()
                    .frame(width: 120, height: 50)
            }
            Spacer()
            Image(systemName: "gear")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.gray)
        }
    }
}
