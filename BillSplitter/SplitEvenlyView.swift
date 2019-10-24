//
//  SplitEvenlyView.swift
//  BillSplitter
//
//  Created by Joseph Poon on 10/23/19.
//

import SwiftUI

struct SplitEvenlyView: View {
    
    @State var beforeTax: String = ""
    @State var afterTax: String = ""
    @State var tips: String = ""
    @State var partySize: String = ""
    
    var body: some View {
        VStack {
            TextField("Bill Before Tax", text: $beforeTax)
            TextField("Bill After Tax", text: $afterTax)
            TextField("Tips (%)", text: $tips)
            TextField("Party Size", text: $partySize)
            Text("Calucate")
        }
    }
}

struct SplitEvenlyView_Previews: PreviewProvider {
    static var previews: some View {
        SplitEvenlyView()
    }
}
