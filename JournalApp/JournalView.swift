//
//  JournalView.swift
//  JournalApp
//
//  Created by Alperen Sarışan on 9.12.2023.
//

import SwiftUI

struct JournalView: View {
    
    @State var journalData = [String]()
    @State var sheetVisible = false
    @State var selectedImageVisible = false
    @State var journalText = ""
    @State var selectedImage = ""
    
    var image = "journal"
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Journal")
                    .font(.title)
                    .bold()
                    Spacer()
            }
            .padding()
            
            GeometryReader { proxy in
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(spacing: 10),
                                       GridItem(spacing: 10)],
                    spacing: 10) {
                        ForEach (journalData, id: \.self) { j in
                            VStack{
                                Image(image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: (proxy.size.width - 10) / 2)
                                    .clipped()
                                    .cornerRadius(50)
                                    .onTapGesture {
                                        selectedImageVisible = true
                                        selectedImage = image
                                    }
                                    .sheet(isPresented: $selectedImageVisible) {
                                        ImageView(selectedImage: $selectedImage)
                                    }
                                
                                Text(j)
                                    .bold()
                                    .font(.callout)
                                    .foregroundColor(Color("JournalColor"))
                            }
                            .padding()
                        }
                    }
                }
                .sheet(isPresented: $sheetVisible) {
                    JournalSubView(journalText: $journalText, sheetVisible: $sheetVisible, journalData: $journalData)
                }
            }
            Button {
                sheetVisible = true
            } label: {
                Text("Add Entry")
                    .foregroundColor(Color("TextColor"))
                    .font(.title2)
                    .bold()
            }

        }
        }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}
