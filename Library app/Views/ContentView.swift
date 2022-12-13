//
//  ContentView.swift
//  Library app
//
//  Created by Sean Smith on 11/12/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: BookViewModel
    
    var body: some View {
        
        NavigationView{
        ScrollView{
            
                
                ForEach(model.books){book in
                    NavigationLink(destination: {BookDetails(book: book)}, label: {Card(book: book)
                            .padding(.bottom, 20.0)
                    })
                    .environmentObject(book)
                    

                
                
            }
            .navigationTitle("My Library")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BookViewModel())
    }
}
