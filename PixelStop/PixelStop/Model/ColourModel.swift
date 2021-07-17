//
//  ColourModel.swift
//  PixelStop
//
//  Created by Robert Giles on 28.06.21.
//
import SwiftUI

struct ColourModel {
    var colours: [Color] = [.red, .green, .yellow, .blue]
    
    func getColour() -> Color? {
        if let randomElement = colours.randomElement() {
            return randomElement
        }
        
        return nil
    }
}
