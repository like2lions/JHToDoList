//
//  SplashScreenView.swift
//  TodoList
//
//  Created by zooey on 2022/11/06.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive {
            ListView()
        } else {
            ZStack {
                Color(red: 200/255, green: 200/255, blue: 255/255)
                    .ignoresSafeArea()
                VStack {
                    VStack {
                        Image(systemName: "teddybear.fill")
                            .font(.system(size: 150))
                            .foregroundColor(.indigo)
                        Text("T☻ D☻")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
            .environmentObject(ListViewModel())
    }
}
