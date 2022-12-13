//
//  Card.swift
//  Library app
//
//  Created by Sean Smith on 11/12/2022.
//

import SwiftUI

struct Card: View {
    @ObservedObject var book:Book
    
    var body: some View {
        
        
            ZStack{
                
                Rectangle()
                    .frame(width: 360, height: 525, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(Color.white)
                    .shadow(color: Color.gray, radius: 10, x: 8, y: 2)
                
                
                
                LazyVStack {
                    
                    
                    VStack(alignment: .leading){
                        Text(book.title)
                            .font(.title2)
                            .fontWeight(.bold)
                        Text(book.author)
                            .font(.callout)
                    }
                    .padding(.trailing, 120.0)
                    .foregroundColor(Color.black)
                    
                    
                    Image(book.image!)
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 41.0)
                    
                    
                }
                
            }
        
  
        
        
    }
    
}


struct Card_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = BookViewModel()

        
        Card(book: model.books[1])
    }
}
