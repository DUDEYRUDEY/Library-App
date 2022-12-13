//
//  BookPagesView.swift
//  Library app
//
//  Created by Sean Smith on 12/12/2022.
//

import SwiftUI

struct BookPagesView: View {
    @ObservedObject var book:Book
    
    
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: 22.0){
                
                
                
                ForEach(book.content.indices, id:\.self){index in
                    VStack{
                        Text(book.content[index])
                            .frame(width: 375, height: 700, alignment: .center)
                        Text(String(index + 1))
                        
                        
                    }
                }
                
                    
                    .padding()
                }
                
            
        }
    }
}

struct BookPagesView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookViewModel()
        
        BookPagesView(book:model.books[0])
    }
}
