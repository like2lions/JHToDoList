//
//  AddView.swift
//  TodoList
//
//  Created by zooey on 2022/11/06.
//

import SwiftUI

struct AddView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFiedlText: String = ""
    
    var body: some View {
        HStack {
            TextField("T☻ D☻", text: $textFiedlText)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color.white)
                .cornerRadius(10)
            
            Button (action: saveButtonPressed, label: {
                Text("저장".uppercased())
                    .foregroundColor(.white)
                    .frame(width: 80, height: 55)
                    .background(Color.indigo)
                    .cornerRadius(15)
            })
        }
        .padding(15)
    }
    func saveButtonPressed() {
        listViewModel.addItem(title: textFiedlText)
        textFiedlText = ""
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
            .environmentObject(ListViewModel() )
    }
}
