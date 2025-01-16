//
//  fsd.swift
//  sample-movies-app-ios
//
//  Created by hossam on 15/01/2025.
//

import Foundation
import UIKit
import SwiftUI

struct UIKitButtonView: UIViewRepresentable {
 
      func makeUIView(context: Context) -> UIButton {
           let button = UIButton(type: .system)
           button.setTitle("UIKit Button", for: .normal)
           button.addTarget(context.coordinator, action: #selector(Coordinator.buttonTapped), for: .touchUpInside)
           return button
       }

      func updateUIView(_ uiView: UIButton, context: Context) {
        // Update the button if needed
       }

      func makeCoordinator() -> Coordinator {
        Coordinator()
       }

       class Coordinator: NSObject {
           @objc func buttonTapped() {
               print("UIKit Button tapped!")
           }
       }
    
    
    
}
