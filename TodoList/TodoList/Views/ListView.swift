//
//  ListView.swift
//  TodoList
//
//  Created by zooey on 2022/11/06.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        
        VStack() {
            Text("T ☻ D ☻")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(10)
            AddView()
            ZStack {
                if listViewModel.items.isEmpty {
                    List {
                        Text("T☻D☻ LIST를 추가해주세요♥︎")
                    }
                    .background(Color(red: 200/255, green: 200/255, blue: 255/255))
                    .scrollContentBackground(.hidden)
                } else {
                    List {
                        ForEach(listViewModel.items) { item in
                            ListRowView(item: item)
                                .onTapGesture {
                                    withAnimation(.linear) {
                                        listViewModel.updateItem(item: item)
                                    }
                                }
                        }
                        .onDelete(perform: listViewModel.deleteItem)
                    }
                    .background(Color(red: 200/255, green: 200/255, blue: 255/255))
                    .scrollContentBackground(.hidden)
                }
            }
        }
        .background(Color(red: 200/255, green: 200/255, blue: 255/255))
    }
}

struct ListView_Previews: PreviewProvider {
    
    static var previews: some View {
        ListView()
            .environmentObject(ListViewModel())
    }
}
