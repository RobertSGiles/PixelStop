//
//  PixelView.swift
//  PixelStop
//
//  Created by Robert Giles on 17.07.21.
//

import SwiftUI

struct PixelView: View {
    var n: Int
    var colour: Color
    var body: some View {
        Rectangle()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(colour)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    }
}

struct PixelView_Previews: PreviewProvider {
    static var previews: some View {
        PixelView(n: 0, colour: Color.red)
    }
}
