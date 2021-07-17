//
//  ContentView.swift
//  PixelStop
//
//  Created by Robert Giles on 28.06.21.
//

import SwiftUI

var colourModel = ColourModel()
var valuesStored = StoredValues()
var achievementModel = AchievementsModel()

struct ContentView: View {
    
    @State var showInfo: Bool = false
    @State var showAchievements: Bool = false
    @State private var showDetails = false
    @State var newColour1 = Color.white
    @State var newColour2 = Color.white
    
    func checkAchievements() {
        let currentColours: [Color] = valuesStored.getAllValues()
        achievementModel.checkWinConditions(colourList: currentColours)
    }
    
    var body: some View {
        VStack {
            HeaderView(showAchievementsView: $showAchievements, showInfoView: $showInfo)
                .animation(.default)
            
            Button(action: {
                self.newColour1 = colourModel.getColour()!
                valuesStored.addValue(pixel: PixelView(n: 0, colour: newColour1))
            }) {
                VStack {
                    PixelView(n: 1, colour: newColour1)
                }
            }
            Button(action: {
                self.newColour2 = colourModel.getColour()!
                valuesStored.addValue(pixel: PixelView(n: 1, colour: newColour2))
            }) {
                VStack {
                    PixelView(n: 2, colour: newColour2)
                }
            }
            Button(action: {
                self.checkAchievements()
            }) {
                Text("CHECK")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
