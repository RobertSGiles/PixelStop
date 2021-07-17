//
//  ValueStore.swift
//  PixelStop
//
//  Created by Robert Giles on 28.06.21.
//

import SwiftUI

class StoredValues {
    
    var valuesStored: [PixelView] = []
    
    func addValue(pixel: PixelView)
    {
        if valuesStored.isEmpty || valuesStored.count < 2 {
            valuesStored.append(pixel)
        }
        valuesStored[pixel.n].colour = pixel.colour
    }
    
    func getAllValues() -> [Color] {
        var colourList: [Color] = []
        for item in valuesStored {
            colourList.append(item.colour)
        }
        return colourList
    }
}
