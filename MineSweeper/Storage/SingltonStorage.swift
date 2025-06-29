//
//  SingltonStorage.swift
//  MineSweeper
//
//  Created by Дамир Шаймуханбетов on 29.05.2025.
//

import Foundation

final class SingltonStorage: StorageModel {
   
    
    
    static var shared = SingltonStorage()
    
    var storage = [String : [[GameCell]]]()
    var storageBombs = [String : [CoordField]]()
    var namesOfFields = [String]()
    var selectedField: String?
    
    func saveData(name: String, field: [[GameCell]]) {
        storage[name] = field
        namesOfFields.append(name)
    }
    
    func fetchData(name: String) -> [[GameCell]]? {
        if let data = storage[name] {
            return data
        }
        return nil
    }
    
    func loadData() {
        //
    }
    
    func saveBombs(name: String, bombs: [CoordField]) {
        storageBombs[name] = bombs
    }
    
    func fetchBombs(name: String) -> [CoordField]? {
        if let data = storageBombs[name] {
            return data
        }
        return nil
    }
}
