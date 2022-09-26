//
//  HomeView.swift
//  UberSwiftUITtorial
//
//  Created by kittawat phuangsombat on 2022/9/24.
//

import SwiftUI

struct HomeView: View {
    @State private var showLocationSearchView = false
    
    var body: some View {
        ZStack(alignment: .top) {
            UberMapViewRepresentable()
                .ignoresSafeArea()
            
            if showLocationSearchView {
                LocationSearchView()
            } else {
                LocationSearchActivationView()
                    .padding(.top, 72)
                    .onTapGesture {
                        withAnimation {
                            showLocationSearchView.toggle()
                        }
                    }
            }
            
            
            
            MapViewActionButton(showLocationSearchView: $showLocationSearchView)
                .padding(.leading )
                .padding(.top, 4)
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
