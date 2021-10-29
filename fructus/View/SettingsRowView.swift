//
//  SettingsRowView.swift
//  fructus
//
//  Created by Jasper K on 10/7/21.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: - Properties
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                
                if let content = content {
                    Text(content)
                } else if let linkLabel = linkLabel, let linkDestination = linkDestination {
                    Link(linkLabel, destination: URL(string: "https://\(linkDestination)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }//: HStack
        }//: VStack
    }
    
    // MARK: - Functions
    
}

// MARK: - Properties
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "John / Jane")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(name: "Developer", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
