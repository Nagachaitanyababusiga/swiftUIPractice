//
//  ImageOperations.swift
//  PracticeSwift
//
//  Created by Revanth Narne on 06/12/25.
//

import SwiftUI

struct ImageOperations: View {
    var body: some View {
        VStack{
            Image("greens")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 200)
            
            Image("canyon")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            
            Image("beach")
                .resizable()
                .scaledToFit()
                .frame(width: 300,height: 200)
                .clipped()
                .cornerRadius(100)
            
            Image(systemName: "star.fill")
            
            /*
             Image(systemName: "star.fill")
                .font(.system(size: 40))
                .foregroundColor(.yellow)
             */

        }
    }
}

struct ZView: View {
    @State private var count: Int = 0
    var body: some View {
        ZStack{
            Image("canyon")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .onTapGesture {
                    count+=1
                }
            
            
            Text("count is \(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
        }
    }
}

#Preview {
    ZView()
}
