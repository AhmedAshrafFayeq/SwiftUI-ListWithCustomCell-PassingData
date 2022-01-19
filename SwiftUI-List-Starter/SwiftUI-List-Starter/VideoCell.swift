//
//  VideoCell.swift
//  SwiftUI-List-Starter
//
//  Created by Ahmed Fayeq on 19/01/2022.
//

import SwiftUI

struct VideoCell: View {
    var video: Video
    var body: some View {
        Image(video.imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 70)
            .cornerRadius(4)
            .padding(.vertical, 4)
        
        VStack(alignment: .leading, spacing: 5){
            Text(video.title)
                .fontWeight(.semibold)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
            
            Text(video.uploadDate)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        
    }
}

struct VideoCell_Previews: PreviewProvider {
    static var previews: some View {
        VideoCell(video: Video())
    }
}
