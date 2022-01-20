//
//  VideoDetailsView.swift
//  SwiftUI-List-Starter
//
//  Created by Ahmed Fayeq on 19/01/2022.
//

import SwiftUI

struct VideoDetailsView: View {
    var video: Video
    var body: some View {
        VStack(spacing: 20){
            Spacer()
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(4)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40){
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text(video.description)
                .font(.body)
                .foregroundColor(.secondary)
                .padding()
            
            Spacer()
            
            Link(destination: video.url, label: {
                StandardButton(title: "Watch Now")
            })
        }        
    }
}

struct VideoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailsView(video: VideoList.topTen.first!)
    }
}
