//
//  MovieListView.swift
//  MovieProject
//
//  Created by CHRISTOPHE LEHOUSSINE on 20/09/2022.
//

import SwiftUI

struct MovieListView: View {
    @State private var showingSheet = false
    @State var addMovie = false
    @State var movieB: [Movie] = movies
    @State var searchText = ""
    var body: some View {
        
        NavigationView {
            
            List{
            ForEach(searchResults, id: \.self) { movie in
                NavigationLink {
                    
                    Movie_Detail(movie: movie)
                    
                } label: {
                    
                    MovieRow(movie: movie)
                    
                }
                }
            }.searchable(text: $searchText)
                .navigationTitle("Movies")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    Button(action: {
                        showingSheet.toggle()
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(Color .red)
                    })
                    
                    
                    .sheet(isPresented: $showingSheet) {
                        ModalFormView(addMovie: $addMovie, movies: $movieB)
                    }
                }
        }
    }
    var searchResults: [Movie] {
        if searchText.isEmpty {
            return movieB
        } else {
            return movieB.filter { $0.title.lowercased().contains(searchText.lowercased()) }
        }
    }
}
struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}

struct MovieRow: View {
    let movie: Movie
    var imageName = "film"
    var body: some View {
        
        HStack{
            Image(systemName: imageName).foregroundColor(.red)
            Text(movie.title)
                .padding(5)
            Text("(" + String(movie.year) + ")")
            Spacer()
            
        }.padding(.vertical)
    }
}

