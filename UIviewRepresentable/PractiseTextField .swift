//
//  PractiseTextField .swift
//  UIviewRepresentable
//

import Foundation
import SwiftUI

struct PractiseTextField: UIViewRepresentable {
    
    @Binding var value : String
    
    func makeUIView(context: Context) -> UITextField {
        let TextField = UITextField()
        TextField.delegate = context.coordinator // Coordinator deleate instance
        return TextField
    }
    
    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = value
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(value: $value)
    }
}

// Delegate to allow only numbers in textfield

class Coordinator : NSObject, UITextFieldDelegate {
    
    @Binding var value : String
    
    init(value: Binding<String>) {
        self._value = value
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if string.isEmpty {
            return true
        }
        
        if Int(string) != nil {
            value = textField.text ?? ""
            return true
        }
        
        return false
    }
}
