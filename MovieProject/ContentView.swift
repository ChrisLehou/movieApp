//
//  ContentView.swift
//  MovieProject
//
//  Created by CHRISTOPHE LEHOUSSINE on 20/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        NavigationView {
                    Text("SwiftUI")
                        .navigationTitle("Welcome")
                        .toolbar {
                            Button("Help") {
                                print("Help tapped!")
                            }
                        }
                }
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
