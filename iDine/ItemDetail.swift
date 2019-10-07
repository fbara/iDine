//
//  ItemDetail.swift
//  iDine
//
//  Created by Frank Bara on 10/5/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    var item: MenuItem
    
    var body: some View {
        //TODO: Add a 'favorite' navigation bar item & a Favorite tab to show them all
        
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
            .padding()
            
            //TODO: Customize the button to make it look better
            Button("Order This") {
                self.order.add(item: self.item)
            }.font(.headline)
            
            Spacer()
            
        }.navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let order = Order()
    
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(order)
        }
    }
}
