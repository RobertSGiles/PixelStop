//
//  TitleModifier.swift
//  PixelStop
//
//  Created by Robert Giles on 17.07.21.
//

import SwiftUI

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
        .font(.system(size: 50))
        .rainbow()
  }
}
