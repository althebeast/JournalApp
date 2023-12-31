//
//  SettingView.swift
//  JournalApp
//
//  Created by Alperen Sarışan on 9.12.2023.
//

import SwiftUI

struct SettingView: View {
    
    @State var privateMode = false
    @State var isDark = false
    
    var body: some View {
        
        VStack{
            Toggle("Private Mode", isOn: $privateMode)
            
            if privateMode {
                Text("Private mode is on")
            }
            
            Toggle("Dark Mode", isOn: $isDark)
            
            if isDark {
                Text("Dark mode is on")
            }
        }
        .padding()
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
