//
//  ItemRow.swift
//  iDine
//
//  Created by Frank Bara on 10/5/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
