//
//  AstronautView.swift
//  Moonshot
//
//  Created by Dmitryi Velko on 17.03.2022.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    
    
    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                
                CastomDivider()
                    
                Text(astronaut.description)
                    .foregroundColor(.white)
                    
            }
        }
        .padding()
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}











struct AstronautView_Previews: PreviewProvider {
    static let astrounats: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstronautView(astronaut: astrounats["aldrin"]!)
    }
}


