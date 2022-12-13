//
//  DataService.swift
//  Library app
//
//  Created by Sean Smith on 11/12/2022.
//

import Foundation

struct DataService{
    
    static func getLocalData() -> [Book]{
        
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        guard pathString != nil else {
            return [Book]()
        }
        
        let url = URL(filePath: pathString!)
        let decoder = JSONDecoder()
        
        do {
            
            let data = try Data(contentsOf: url)
            
            do{
                let bookData = try decoder.decode([Book].self, from: data)
                
                for index in 0...bookData.count - 1{
                    bookData[index].image = "cover\(String(index+1))"
                    //Will append cover1, cover2 ect.
                }
                
                return bookData
            }
            catch{
                print(error)
                print("Issue in json parsing. Decoding the json to book.")
            }
            
        }
        
        catch{
            print("error with making data object")
            print(error)
        }
        
        return [Book]()
    }
}
