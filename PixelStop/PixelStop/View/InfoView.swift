//
//  InfoView.swift
//  PixelStop
//
//  Created by Robert Giles on 17.07.21.
//

import SwiftUI

struct InfoView: View {
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 20) {
        HeaderComponent()
        
        Text("App Info")
          .modifier(TitleModifier())
        
        AppInfoView()
        
        Spacer()
        
        Button(action: {
          self.presentationMode.wrappedValue.dismiss()
        }) {
          Text("Continue".uppercased())
            .modifier(ButtonModifier())
        }
      }
      .frame(minWidth: 0, maxWidth: .infinity)
      .padding(.top, 15)
      .padding(.bottom, 25)
      .padding(.horizontal, 25)
    }
  }
}

struct InfoView_Previews: PreviewProvider {
  static var previews: some View {
    InfoView()
  }
}

struct AppInfoView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      RowAppInfoView(ItemOne: "Application", ItemTwo: "Pixel Stop")
      RowAppInfoView(ItemOne: "Compatibility", ItemTwo: "iPhone and iPad")
      RowAppInfoView(ItemOne: "Developer", ItemTwo: "Robert Giles")
      RowAppInfoView(ItemOne: "Version", ItemTwo: "1.0.0")
      RowAppInfoView(ItemOne: "RainbowModifier", ItemTwo: "kieranb662")
    }
  }
}

struct RowAppInfoView: View {
  var ItemOne: String
  var ItemTwo: String
  
  var body: some View {
    VStack {
      HStack {
        Text(ItemOne).foregroundColor(Color.gray)
        Spacer()
        Text(ItemTwo)
      }
      Divider()
    }
  }
}
