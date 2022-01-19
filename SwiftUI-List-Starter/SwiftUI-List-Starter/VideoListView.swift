//
//  VideoListView.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct VideoListView: View {
    var videos: [Video] = VideoList.topTen
    var body: some View {
        
        NavigationView{
            List(videos, id: \.id){ video in
                NavigationLink(
                    destination: VideoDetailsView(video: video),
                    label: {
                        VideoCell(video: video)
                    })
            }
            .navigationTitle("Sean's Top 10")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
