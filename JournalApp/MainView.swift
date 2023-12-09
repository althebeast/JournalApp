//
//  ContentView.swift
//  JournalApp
//
//  Created by Alperen Sarışan on 9.12.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView{
            
            JournalView()
                .tabItem {
                    Label("Journal", systemImage: "text.book.closed")
                }
            
            SettingView()
                .tabItem {
                    Label("Setting", systemImage: "gear")
                }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
