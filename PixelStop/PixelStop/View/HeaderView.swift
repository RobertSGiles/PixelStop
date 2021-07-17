//
//  HeaderView.swift
//  PixelStop
//
//  Created by Robert Giles on 17.07.21.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var showAchievementsView: Bool
    @Binding var showInfoView: Bool
    
    var body: some View {
      HStack {
        Button(action: {
          self.showInfoView.toggle()
        }) {
          Image(systemName: "info.circle")
            .font(.system(size: 24, weight: .regular))
        }
        .accentColor(Color.primary)
        .sheet(isPresented: $showInfoView) {
          InfoView()
        }
        
        Spacer()
        
        HeaderComponent()
        
        Spacer()
        
        Button(action: {
          self.showAchievementsView.toggle()
        }) {
          Image(systemName: "list.star")
            .font(.system(size: 24, weight: .regular))
        }
        .accentColor(Color.primary)
        .sheet(isPresented: $showAchievementsView) {
            AchievementsView()
        }

      }
      .padding()
    }
  }

  struct HeaderView_Previews: PreviewProvider {
    
    @State static var showAchievementsView: Bool = false
    @State static var showInfo: Bool = false
    
    static var previews: some View {
        HeaderView(showAchievementsView: $showAchievementsView, showInfoView: $showInfo)
        .previewLayout(.fixed(width: 300, height: 100))
    }
  }
