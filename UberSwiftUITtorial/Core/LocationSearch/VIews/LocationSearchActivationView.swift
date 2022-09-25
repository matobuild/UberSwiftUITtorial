//
//  LocationSearchActivationView.swift
//  UberSwiftUITtorial
//
//  Created by kittawat phuangsombat on 2022/9/25.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        HStack {
            
            Rectangle()
                .fill(Color.black)
                .frame(width: 8, height: 8)
                .padding(.horizontal)
            
            Text("Where to?")
                .foregroundColor(Color(.darkGray))
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 62, height: 50)
        .background(
        Rectangle()
            .fill(Color.white)
            .shadow(color: .black, radius: 6)
        )
    
    }
        
}

struct LocationSearchActivationVIew_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchActivationView()
    }
}
