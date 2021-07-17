//
//  AchievementsView.swift
//  PixelStop
//
//  Created by Robert Giles on 17.07.21.
//

import SwiftUI

var achievementsModel = AchievementsModel()

struct AchievementsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
          HeaderComponent()
          
          Text("Achievements")
            .font(.system(size: 40))
            .modifier(TitleModifier())
            
          AchievementsListView()
          
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

  struct AchievementsView_Preview: PreviewProvider {
    static var previews: some View {
        AchievementsView()
    }
  }

struct AchievementsListView: View {
  var array = achievementsModel.getAchievementsArray()
  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
        AchievementRowView(Title: array![0].title, Completed: array![0].isChecked)
        AchievementRowView(Title: array![1].title, Completed: array![1].isChecked)
    }
  }
}

struct AchievementRowView: View {
  var Title: String
  var Completed: Bool
  
  var body: some View {
    VStack {
      HStack {
        Text(Title).foregroundColor(Color.gray)
        Spacer()
        if Completed {
            Image(systemName: "checkmark.rectangle")
              .font(.system(size: 24, weight: .regular))
        } else {
            Image(systemName: "square")
              .font(.system(size: 24, weight: .regular))
        }
      }
      Divider()
    }
  }
}
