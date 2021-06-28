//
//  ValueStore.swift
//  PixelStop
//
//  Created by Robert Giles on 28.06.21.
//

import Foundation

class StoredValues {
    
    var valuesStored: [Pixel] = []
    
    func addValue(pixel: Pixel)
    {
        valuesStored.append(pixel)
    }
    
    func getAllValues() {
        for item in valuesStored {
            print(item.colour)
        }
    }
}
