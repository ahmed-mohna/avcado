//
//  bundleFetchData.swift
//  avcado
//
//  Created by Ahmed Mohna on 26/06/2022.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(filename : String) -> T {
        
        // MARK: 1- locater the json file
        
        guard let url = self.url(forResource: filename, withExtension: nil) else{
        fatalError("failed to locate file with file name \(filename) in bundle")
        }
       
        // MARK: 2- create property for the data
        
        guard let Data = try? Data(contentsOf: url) else {
            
            fatalError("failed to retive date from specified json file \(filename) ")
            
            
        }
        
        // MARK: 3- create decoder
         let decoder = JSONDecoder()
        
        
        // MARK: 4- create ther property for the decoder data
        guard  let retivedData = try? decoder.decode(T.self, from: Data) else{
            fatalError("cant return data from decoder")
        }
        
        
        
        // MARK: 5- return rEADY TO use data property
        
        
        return retivedData
        
        
    }
}


