//
//  HomeView.swift
//  DesignCode
//
//  Created by vidit shah on 06/06/20.
//  Copyright © 2020 vidit shah. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @Binding var showProfile:Bool
    var body: some View {
       VStack {
                   HStack {
                       Text("Watching").font(.system(size: 28, weight: .bold))
                       Spacer()
                       AvatarView(showProfile: $showProfile)
                   }
                   .padding(.horizontal)
                   .padding(.top,30)
                   
                   Spacer()
               }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showProfile: .constant(false))
    }
}
