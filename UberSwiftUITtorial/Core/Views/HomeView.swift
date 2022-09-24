//
//  HomeView.swift
//  UberSwiftUITtorial
//
//  Created by kittawat phuangsombat on 2022/9/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
