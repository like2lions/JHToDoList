//
//  ListRowView.swift
//  TodoList
//
//  Created by zooey on 2022/11/06.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.seal.fill" : "seal")
                .foregroundColor(.indigo)
            Text(item.title)
            Spacer()
        }
        .font(.title3)
        .padding(7)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var itme1 = ItemModel(title: "first", isCompleted: false)
    static var itme2 = ItemModel(title: "second", isCompleted: true)
    
    static var previews: some View {
            ListRowView(item: itme1)
            ListRowView(item: itme2)
    }
}
