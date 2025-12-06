//
//  PracticeSwift
//
//  Created by Nagachaitanyababusiga on 06/12/25.
//
/*
import SwiftUI

struct SampleTest: View{
    var body: some View{
        Text("This is some data")
            .font(Font.largeTitle)
            .fontWeight(.bold)
            .padding()
    }
}

struct ButtonView: View{
    @State private var count: Int = 0;
    var body: some View{
        VStack{
            Text("Count: \(count)")
                .font(.title)
                .fontWeight(.bold)
            
            Button("OK"){
                count=count+1;
            }
            .buttonStyle(.borderedProminent)
        }
        .padding(20)
    }
}

#Preview {
    ButtonView()
}
*/


import SwiftUI

struct ButtonView: View{
    @State var count : Int = 0
    
    var body: some View{
        VStack{
            Text("Count is : \(count)")
                .font(Font.largeTitle)
                .fontWeight(.bold)
            
            Button("Click me!!"){
                count+=1;
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        .padding(20)
    }
}


struct CardView: View{
    
    var body: some View{
        VStack{
            Text("Heading Title")
                .font(.headline)
            
            Text("This is card component that can be used anywhere")
                .font(.subheadline)
        }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(12)
            .shadow(radius: 5)
            .padding()
    }
    
}

struct HomeCard: View{
    var title: String
    var color: Color = .green
    var body: some View{
        Text(title)
            .font(.headline)
            .foregroundColor(.white)
            .padding(20)
            .frame(maxWidth: .infinity)
            .background(color)
            .cornerRadius(12)
            .shadow(radius: 5)
    }
}

#Preview {
    // CardView()
    HomeCard(title: "Fresh title", color: .green)
}




































