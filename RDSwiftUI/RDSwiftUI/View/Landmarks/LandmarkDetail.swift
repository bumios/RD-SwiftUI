//
//  LandmarkDetail.swift
//  RDSwiftUI
//
//  Created by Duy Tran N. on 22/07/2022.
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
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading,
                   spacing: 10,
                   content: {
                HStack {
                    Text(landmark.name)
                        .font(.title3)
                        .foregroundColor(.green)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }

                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.caption)
                .foregroundColor(.green)

                Divider()

                VStack(alignment: .leading, spacing: 5) {
                    Text("About \(landmark.name)")
                        .font(.title3)
                    Text(landmark.description)
                        .font(.caption)
                }
                .foregroundColor(.cyan)
            })
            .padding()

            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
