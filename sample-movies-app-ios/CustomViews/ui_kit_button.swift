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
 
      func makeUIView(context: Context) -> UIView {
          let containerView = UIView()

                  let label = UILabel()
                  label.text = "Hello, UIKit!"
                  label.font = UIFont.systemFont(ofSize: 24)
                  label.textColor = .black
                  label.textAlignment = .center
                  label.translatesAutoresizingMaskIntoConstraints = false

                  // Create and configure the button
                  let button = UIButton(type: .system)
                  button.setTitle("Press Me", for: .normal)
                  button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
                  button.tintColor = .systemBlue
                  button.translatesAutoresizingMaskIntoConstraints = false
                  button.addTarget(context.coordinator, action: #selector(Coordinator.buttonTapped), for: .touchUpInside)

                  // Add the label and button to the container view
                  containerView.addSubview(label)
                  containerView.addSubview(button)

                  // Set up Auto Layout constraints
                  NSLayoutConstraint.activate([
                      // Center the label
                      label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
                      label.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: -50),
                      
                      // Center the button below the label
                      button.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
                      button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20)
                  ])

                  return containerView
       }

      func updateUIView(_ uiView: UIView, context: Context) {
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
