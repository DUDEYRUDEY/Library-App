//
//  BookDetails.swift
//  Library app
//
//  Created by Sean Smith on 11/12/2022.
//

import SwiftUI

struct BookDetails: View {
    @EnvironmentObject var model:BookViewModel
    @ObservedObject var book:Book
    @State var rating = 0
    @State var favourite = 0
    @State var img = "star"
    
    var body: some View {
        
        
        NavigationView{
            VStack{
                Text(book.title)
                
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.trailing, 200.0)
                
                VStack{
                    Text("Read Now!")
                    NavigationLink(destination: {BookPagesView(book: book)}, label: { Image(book.image!)
                            .resizable()
                            .scaledToFit()
                            .frame(width:800, height: 300, alignment: .center)
                        
                    })

                }
                .padding(.top,30)
                
                Text("Mark for later!")
                    .padding()
                    .bold()
                    .font(.callout)
                
                Button(action: {
                    print ("Something")
                    if favourite == 2 {
                        img = "star"
                        favourite = 0
                    }
                    else{
                        img = "star.fill"
                        favourite = 2
                    }
                    
                }, label: {
                    Image(systemName: img)
                })
                .foregroundColor(Color.yellow)
                .padding(.bottom, 50.0)
                
                Text("Rate \(book.title)")
                    .font(.callout)
                    .bold()
                
                Picker("Rate Amazing Words", selection: $rating, content: {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                })
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                .padding(.bottom,50)
            }
            
        }
        .onChange(of: rating, perform: {value in
        
            model.changeRating(id: book.id, rating: value)
            

        })

    }
}

struct BookDetails_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = BookViewModel()
        
        BookDetails(book: model.books[0])
            .environmentObject(model)
    }
}
