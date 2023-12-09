//
//  JournalSubView.swift
//  JournalApp
//
//  Created by Alperen Sarışan on 9.12.2023.
//

import SwiftUI

struct JournalSubView: View {
    
    @Binding var journalText: String
    @Binding var sheetVisible: Bool
    @Binding var journalData: [String]
    
    var body: some View {
        
        VStack{
            
            HStack {
                
                Spacer()
                Button {
                    sheetVisible = false
                } label: {
                    Image(systemName: "x.circle.fill")
            }
            }
            .padding()
            .foregroundColor(.black)

            
            TextField("Enter your journal entry...", text: $journalText)
                .padding()
                .textFieldStyle(.roundedBorder)
            
            Button(action: {
                sheetVisible = false
                journalData.append(journalText)
            }, label: {
                Text("Save Entry")
                    .foregroundColor(Color("TextColor"))
                    .font(.title2)
                    .bold()
            })
            .padding()
        }
        
    }
}

struct JournalSubView_Previews: PreviewProvider {
    static var previews: some View {
        JournalSubView(journalText: .constant("Alperen"), sheetVisible: .constant(false), journalData: .constant(["alperen"]))
    }
}
