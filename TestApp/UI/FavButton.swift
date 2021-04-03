//
//  FavButton.swift
//  TestApp
//
//  Created by Gorez Tony on 03/04/2021.
//

import SwiftUI

struct FavButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        }
    }
}

struct FavButton_Previews: PreviewProvider {
    static var previews: some View {
        FavButton(isSet: .constant(true))
    }
}
