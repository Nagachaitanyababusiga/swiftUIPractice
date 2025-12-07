//
//  FinalPart.swift
//  SwiftUIPractice
//
//  Created by user2 on 07/12/25.
//

import SwiftUI

/*
 
 MVC :- Model view controller
 MVVM :- Model view viewModel
 
 MVC :- (Used in UIKit)
 Model -> Data(user,product)
 View -> UI (UIView, Storyboard)
 Controller -> BusinessLogic + view LifeCycle
 
 MVVM :- (prefered in modern ios apps and SwiftUI)
 Model -> data (User, Product)
 View -> SwiftUI view
 View Model -> holds logic + transforms data for the view
 
 */


//example of MVVM

//import the below statement
internal import Combine

//Model
struct Person {
    var name: String
    var age: Int
}


//View Model
class PersonViewModel: ObservableObject {
    @Published var person: Person = Person(name: "Chaitanyá", age: 20)
    
    func birthday(){
        person.age+=1;
    }
}


//View

struct PersonView: View{
    @StateObject private var person: PersonViewModel = PersonViewModel()
    var body: some View {
        VStack{
            Text("Name: \(person.person.name)")
            Text("Age: \(person.person.age)")
            
            Button("Birthday"){
                person.birthday()
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
    }
}


//preview
#Preview {
    PersonView()
}


//COMBINE BASICS
/*
 Publisher -> Sends values over time @Published
 Subscriber -> listens for changes @ObservedObject / @StateObject
 Operators -> modify values (map, filter, debounce, etc)
 */
