//
//  ProperiesWrappers.swift
//  SwiftUIPractice
//
//  Created by user2 on 07/12/25.
//

import SwiftUI
internal import Combine


//@State
struct StateView: View {
    @State private var count : Int = 0;
    var body: some View {
        Text("Count: \(count)")
        Button("Click Me!!"){
            count+=1;
        }
        .buttonStyle(.bordered)
        .tint(.green)
    }
}

//@Binding
struct ParentView: View{
    @State private var count: Int = 0;
    var body: some View{
        ChildView(count: $count);
    }
}

struct ChildView: View{
    @Binding var count: Int
    var body: some View{
        VStack{
            Text("Count: \(count)")
            Button("Click Me!!"){
                count+=1;
            }
            .buttonStyle(.bordered)
            .tint(.green)
        }
    }
}


//ObservedObject
class StorageClass: ObservableObject{
    @Published var count: Int = 0
}

struct StorageTest: View{
    @ObservedObject var storage: StorageClass = StorageClass();
    var body: some View{
        VStack{
            Text("Count: \(storage.count)")
                .font(.headline)
            Button("Click me to count"){
                storage.count+=1;
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
    }
}

//Environment Object
struct EnvironmentObjectView: View{
    @EnvironmentObject var themeObject : EnvironmentStorage;
    var body: some View{
        VStack{
            Text("Count: \(themeObject.theme)")
                .font(.headline)
            Button("Click me to count"){
                if(themeObject.theme=="Light"){
                    themeObject.theme="Dark"
                }else{
                    themeObject.theme="Light"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
    }
}


#Preview {
    //StateView()
    //ParentView()
    //StorageTest()
    EnvironmentObjectView().environmentObject(EnvironmentStorage())
}


/*
 @State is used to maintain a storage within the view
 @StateObject is used to mainpulate the state of intaiated class
 @Binding to use/manipulate the state of other struct/view which is a parent view
 @ObservableObject is used to declare a class which stores some date that can be accessable within a struct
 @Published is used to declare the variable that is useful in observable object
 @ObservedObject if you want to create an object reference for a observable object then you need to create a ObservedObject reference
 @EnvironmentObject is same an ObservedObject but it has a global scope and also the instance is not assigned in the struct but a reference is created and while previewing the environment object need to be passed
*/
