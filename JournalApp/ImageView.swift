//
//  ImageView.swift
//  JournalApp
//
//  Created by Alperen Sarışan on 9.12.2023.
//

import SwiftUI

struct ImageView: View {
    
    @Binding var selectedImage: String
    
    var body: some View {
        
        Image(selectedImage)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(selectedImage: .constant("walpaper"))
    }
}
