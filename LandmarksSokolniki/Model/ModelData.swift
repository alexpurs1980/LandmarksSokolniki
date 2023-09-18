//
//  ModelData.swift
//  LandmarksSokolniki
//
//  Created by Алексей Пурис on 18.09.2023.
//

import Foundation

//create load() method that fetchs JSON with given name from main bundle

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Could not find \(filename) in main bundle!")
    }
    
    do {
        data try Data(contentsOf: file)
    } catch {
        fatalError("Could not find \(filename) in main bundle: \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not parse \(filename) as \(T.self): \(error)")
    }
}
