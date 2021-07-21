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
    @Environment(\.managedObjectContext) var viewContext
    var allAchievements = achievementModel.getAllAchievements()
    
    // Make this a foreach loop
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            AchievementRowView(Title: allAchievements[0].title, Completed:  allAchievements[0].isCompleted)
            AchievementRowView(Title: allAchievements[1].title, Completed:  allAchievements[1].isCompleted)
            AchievementRowView(Title: allAchievements[2].title, Completed:  allAchievements[2].isCompleted)
            AchievementRowView(Title: allAchievements[3].title, Completed:  allAchievements[3].isCompleted)
        }
    }
}

struct AchievementRowView: View {
    var Title: String
    var Completed: Bool
    
    var body: some View {
        VStack {
            HStack {
                Text(Title)
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
