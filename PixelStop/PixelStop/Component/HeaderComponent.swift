//
//  HeaderComponent.swift
//  PixelStop
//
//  Created by Robert Giles on 17.07.21.
//

import SwiftUI

struct HeaderComponent: View {
    
  var body: some View {
    VStack(alignment: .center, spacing: 20) {
        Text("Pixel Stop")
            .font(.system(size: 40))
            .rainbow()
    }
  }
}

struct HeaderComponent_Previews: PreviewProvider {
  static var previews: some View {
    HeaderComponent()
      .previewLayout(.fixed(width: 250, height: 100))
  }
}
