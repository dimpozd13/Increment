//
//  ContentView.swift
//  Increment
//
//  Created by Дмитрий Поздняков on 27.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            HStack{
                ZStack {
                    Circle()
                        .fill(Color.yellow)
                
                    Button(action:{
                        self.count += 1
                    }){
                        Text("Increment")
                    }
                }
                .frame(width: 100, height: 100)
                VStack(alignment: .leading, spacing: 4){
                    Text("Count: \(count)")
                        .font(.largeTitle)
                        .foregroundColor(Color.green)
                    Text("Greg Lim, 2021")
                }
            }
            
            ZStack {
                Circle()
                    .fill(Color.green)
                Button(action:{
                    self.count = 0
                }){
                    Text("Reset")
            }
            }
            .frame(width: 100, height: 100)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
