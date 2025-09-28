//
//  PractiseTextField .swift
//  UIviewRepresentable
//

import Foundation
import SwiftUI

struct PractiseTextField: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let TextField = UITextField()
        TextField.delegate = context.coordinator // Coordinator deleate instance
        return TextField
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
}

// Delegate to allow only numbers in textfield

class Coordinator : NSObject, UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if string.isEmpty {
            return true
        }
        
        return Int(string) != nil
    }
}
