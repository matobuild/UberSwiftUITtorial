//
//  MapViewActionButton.swift
//  UberSwiftUITtorial
//
//  Created by kittawat phuangsombat on 2022/9/25.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var showLocationSearchView : Bool
    
    var body: some View {
        Button {
            withAnimation {
                showLocationSearchView.toggle()
            }
        } label: {
            Image(systemName: showLocationSearchView ? "arrow.left" : "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)

    }
}

struct MapViewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButton(showLocationSearchView: .constant(true))
    }
}
