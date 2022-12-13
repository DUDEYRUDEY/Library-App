//
//  BookViewModel.swift
//  Library app
//
//  Created by Sean Smith on 11/12/2022.
//

import Foundation

class BookViewModel:ObservableObject{
    @Published var books = [Book]()
    
    init(){
        
        //Get the books array.
        self.books = DataService.getLocalData()
    }
    
}
