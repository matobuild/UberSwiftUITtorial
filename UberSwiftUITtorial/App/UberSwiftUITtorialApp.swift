//
//  UberSwiftUITtorialApp.swift
//  UberSwiftUITtorial
//
//  Created by kittawat phuangsombat on 2022/9/24.
//

import SwiftUI

@main
struct UberSwiftUITtorialApp: App {
    //use this app file to create an environment object, so we can use this singular instanse aross multiple surfaces.
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
            //use environment to shared the locationViewModel across the app.
                .environmentObject(locationViewModel)
        }
    }
}
