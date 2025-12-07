//
//  SwiftUIView.swift
//  SwiftUIPractice
//
//  Created by user2 on 07/12/25.
//

import SwiftUI


struct PreviewUIUsingButtonAndText: View {
    
    @State private var message: String = "Hello world"
    @State private var count: Int = 0;
    
    var body: some View{
        VStack{
            Text("\(message)")
                .font(.headline)
            Button("Click Me"){
                count+=1
                message="The button is clicked: \(count) times"
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
    }
}


#Preview{
    PreviewUIUsingButtonAndText()
}
