//
//  TutorDetailsView.swift
//  TutorsApp
//
//  Created by Donkemezuo Raymond Tariladou on 9/26/19.
//  Copyright © 2019 EnProTech Group. All rights reserved.
//

import SwiftUI

struct TutorDetailsView: View {
    var tutor: Tutor
    var body: some View {
        
        VStack {
            Image(tutor.imageName)
            .frame(height: 200, alignment: .center)
                .clipShape(Circle())
            
            Text(tutor.name).font(.title).fontWeight(.bold)
            
            Text(tutor.headline).font(.subheadline).fontWeight(.bold)
            
            Divider() // This will add spacing between textViews
            
            Text(tutor.bio).font(.footnote).multilineTextAlignment(.leading).lineLimit(50)
            // multilineTextAlignment will center our text
            // lineLimit will increase of lines of our textView
            
        }.padding().navigationBarTitle(Text(tutor.name), displayMode: .inline)

    }
}

