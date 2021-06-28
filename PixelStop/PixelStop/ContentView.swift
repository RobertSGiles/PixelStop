//
//  ContentView.swift
//  PixelStop
//
//  Created by Robert Giles on 28.06.21.
//

import SwiftUI

var colourModel = ColourModel()
var valuesStored = StoredValues()

struct ContentView: View {

    @State private var showDetails = false
    @State var newColour1 = Color.white
    @State var newColour2 = Color.white
    var body: some View {
        VStack {
            Button(action: {
                self.newColour1 = colourModel.getColour()!
                valuesStored.addValue(pixel:                     Pixel(n: 1, colour: newColour1))
                valuesStored.getAllValues()
            }) {
                VStack {
                    Pixel(n: 1, colour: newColour1)
                }
            }
            Button(action: {
                self.newColour2 = colourModel.getColour()!
                valuesStored.addValue(pixel:                     Pixel(n: 2, colour: newColour2))
                valuesStored.getAllValues()
            }) {
                VStack {
                    Pixel(n: 2, colour: newColour2)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Pixel: View {
    var n: Int
    var colour: Color
    var body: some View {
        Rectangle()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(colour)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    }
}
