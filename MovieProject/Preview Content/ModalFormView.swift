//
//  ModalFormView.swift
//  MovieProject
//
//  Created by CHRISTOPHE LEHOUSSINE on 21/09/2022.
//

import SwiftUI


struct ModalFormView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var addMovie: Bool
    @State var movieTitle: String = ""
    @State var movieDirector: String = ""
    @State var movieYear: String = ""
    @State var selectedType: movieTypes = .Drame
    @State var moviePitch: String = ""
    @Binding var movies: [Movie]
    
    @State private var selection = "Thriller"
    //  let movieTypes = ["Thriller", "Romantique", "Action", "Drame"]
    
    
    
    var body: some View {
        NavigationView {
            VStack{
                Form {
                    Section(header: Text("CARACTERISTIQUES")) {
                        TextField("Titre du film", text: $movieTitle)
                        TextField("Réalsateur", text: $movieDirector)
                        TextField("Année de sortie", text: $movieYear)
                    }
                    Section(header: Text("SYNOPSIS")) {
                        
                        TextField("Pitch", text: $moviePitch, axis: .vertical)
                            .lineLimit(4, reservesSpace: true)
                    }
                    
                    
                    
                    Section(header: Text("GENRE")) {
                        VStack {
                            Picker(selection: $selectedType, label: Text("")) {
                                ForEach(movieTypes.allCases, id: \.self) { genre in
                                    Text(genre.rawValue)
                                }
                            }
                            .pickerStyle(.automatic)
                            .labelsHidden()
                            .foregroundColor(Color .red)
                            
                        }
                    }
                }
                Button {
                    saveMovie()
                    dismiss()
                    
                } label: {
                    Text("Sauvegarder")
                        .foregroundColor(.red)
                    
                    
                }
            }
            .navigationBarTitle("Ajouter un film")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Fermer") {
                    dismiss()
                }
                .padding()
                .foregroundColor(Color .red)
                
            }
        }
    }
    
    func saveMovie() {
        movies.append(Movie(title: movieTitle, author: movieDirector, year: Int(movieYear) ?? 0, type: selectedType.rawValue, description: moviePitch, imageFilm: ""))
        
    }
    
    
}



struct ModalFormView_Previews: PreviewProvider {
    static var previews: some View {
        ModalFormView(addMovie: .constant(true), movieTitle: "", movieDirector: "", movieYear: "", moviePitch: "", movies: .constant([.preview]))
    }
}
