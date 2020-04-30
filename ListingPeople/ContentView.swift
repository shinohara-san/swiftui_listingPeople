//
//  ContentView.swift
//  ListingPeople
//
//  Created by Yuki Shinohara on 2020/04/10.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//
//https://www.hackingwithswift.com/guide/ios-swiftui/5/3/challenge

import SwiftUI

struct ContentView: View {
    @State var errMessage = ""
    var body: some View {
        Text("Hello, World!")
            .onAppear{
                let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json")!
                var request = URLRequest(url: url)
                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                request.httpMethod = "POST"
                
                URLSession.shared.dataTask(with: request) { data, response, error in
                    guard let data = data else {
                        
                        self.errMessage = "No data in response: \(error?.localizedDescription ?? "Unknown error")."
                        return
                    }
                    if let decodedOrder = try? JSONDecoder().decode(User.self, from: data) {
                       
                        
                    } else {
                        print("Invalid response from server")
                    }
                }.resume()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
