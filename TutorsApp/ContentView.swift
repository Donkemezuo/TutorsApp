//
//  ContentView.swift
//  TutorsApp
//
//  Created by Donkemezuo Raymond Tariladou on 9/26/19.
//  Copyright © 2019 EnProTech Group. All rights reserved.
//

import SwiftUI
// The purpose of this tutorial is to create a tableView of tutors using SwiftUI
struct ContentView: View {
    var tutors = Tutor.testData // 1: Our array of tutors
    
    var body: some View {
        
        
        NavigationView { // This embeds a navigation view into our view
            
        List(tutors) { tutor in // This creates a list of views embedded below
            // 3: We are making sure the content view is using our alltutors to display our tableview
            TutorCell(tutor: tutor)
  }
.navigationBarTitle(Text("Tutors")) // This is setting the navigation Bar title
    }
    }
}

struct TutorCell: View { // This is our tableView Cell
    let tutor: Tutor
    var body: some View {
        
        return NavigationLink(destination: TutorDetailsView(tutor: tutor)) {
            Image(tutor.imageName) // Embedding an image to the stack
            .clipShape(Circle())
            .overlay(Circle())
            .foregroundColor(Color.clear)
            
            VStack(alignment: .leading) { // Vertical Stack to hold the elements of our cell. VStack is the replacement of AutoLayout
            Text(tutor.name)
                .font(.headline)
                .font(
                .custom("HelveticaNeue-Bold", size: 30))
            Text(tutor.headline)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}

//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//
//        ContentView(tutors: testData)
//
//
//    }
//}
