//
//  TodoListApp.swift
//  TodoList
//
//  Created by zooey on 2022/11/06.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environmentObject(listViewModel)
        }
    }
}
