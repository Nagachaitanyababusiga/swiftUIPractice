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


#Preview {
    ButtonView()
}




































