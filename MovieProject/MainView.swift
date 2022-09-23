//
//  MainView.swift
//  MovieProject
//
//  Created by CHRISTOPHE LEHOUSSINE on 22/09/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            MovieListView()
                .tabItem {
                    Label("Film", systemImage: "film")
                        .foregroundColor(.red)
                }
            ProfilView()
                .tabItem {
                    Label("Profil", systemImage: "list.dash")
                        .foregroundColor(.red)
                }
           
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
