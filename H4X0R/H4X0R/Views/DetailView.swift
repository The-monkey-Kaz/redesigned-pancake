//
//  DetailView.swift
//  H4X0R
//
//  Created by myruei on 2023/03/13.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url:String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "www.duckduckgo.com")
    }
}


