//
//  LandmarkDetail.swift
//  TestApp
//
//  Created by Gorez Tony on 25/03/2021.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300).ignoresSafeArea(edges: .top);
            CircleImage(image: landmark.image).offset(y: -120).padding(.bottom, -150);
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    FavButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }

                HStack {
                    Text(landmark.park).font(.subheadline);
                    Spacer();
                    Text(landmark.state).font(.subheadline)
                }
                Divider()
                Text("About \(landmark.name)")
                                    .font(.title2)
                Text(landmark.description)
            }.padding()
            Spacer();
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let data = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: data.landmarks[1])
            .environmentObject(data)
    }
}
