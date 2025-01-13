//
//  SearchBarView.swift
//  Assignment
//
//  Created by Shomil Singh on 13/01/25.
//

import SwiftUI

struct SearchBarView: View {
    @State var searchText: String = ""
    @Binding var viewModel: ContentViewModel
    var body: some View {
        HStack{
            TextField("seach", text: $searchText)
            Button(action: {
                viewModel.data =  searchImplementation(string: searchText, data: viewModel.allDevices ?? [])
            }, label: {
                Image(systemName: "magnifyingglass")
                
            })
        }
        .padding()
    }
}

#Preview {
    SearchBarView(viewModel: .constant(ContentViewModel()))
}
