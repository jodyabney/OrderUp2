//
//  StepperView.swift
//  OrderUp2
//
//  Created by Jody Abney on 7/22/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import SwiftUI

struct StepperView: View {
    @State var quantity = 1
    var body: some View {
        
        ZStack(alignment: .center) {
            Stepper("", value: $quantity, in: 0...10)
                .foregroundColor(.red)
                .labelsHidden()
            Text("\(quantity)")
                .font(Font.system(size: 14))
                .foregroundColor(.red)
        }
    }
}

struct SteppeView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
