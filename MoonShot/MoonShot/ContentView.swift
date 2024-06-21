//
//  ContentView.swift
//  MoonShot
//
//  Created by HTLILI on 18/06/2024.
//

import SwiftUI
struct User: Codable {
    let name: String
    let adress: Adress
}
struct Adress: Codable {
    let street: String
    let city: String
}
struct ContentView: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
{
"name": "Taylor Swift",
"adress": {
"street": "555, Taylor Swift Avenue",
"city": "Nashville"
}
}
"""
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.adress.street)
            }
        }
    }
}

#Preview {
    ContentView()
}
