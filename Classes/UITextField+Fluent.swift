import UIKit

extension UITextField {
    @discardableResult func setText(_ text: String) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult func setPlaceholder(_ placeholder: String) -> Self {
        self.placeholder = placeholder
        return self
    }
    
    @discardableResult func setTextColor(_ color: UIColor) -> Self {
        textColor = color
        return self
    }
    
    @discardableResult func setFontSize(_ ofSize: CGFloat) -> Self {
        font = UIFont.systemFont(ofSize: ofSize)
        return self
    }
    
    @discardableResult func setFontWeight(_ weight: UIFont.Weight) -> Self {
        let fontSize = font?.pointSize ?? 12
        font = UIFont.systemFont(ofSize: fontSize, weight: weight)
        return self
    }
    
    @discardableResult func setTextAlignment(_ alignment: NSTextAlignment) -> Self {
        textAlignment = alignment
        return self
    }
    
    @discardableResult func setClearButtonMode(_ mode: UITextField.ViewMode) -> Self {
        clearButtonMode = mode
        return self
    }
    
    @discardableResult func setAutocapitalizationType(_ type: UITextAutocapitalizationType) -> Self {
        autocapitalizationType = type
        return self
    }
    
    @discardableResult func setAutocorrectionType(_ type: UITextAutocorrectionType) -> Self {
        autocorrectionType = type
        return self
    }
    
    @discardableResult func setIsSecureTextEntry(_ isSecure: Bool) -> Self {
        isSecureTextEntry = isSecure
        return self
    }
    
    @discardableResult func setKeyboardType(_ type: UIKeyboardType) -> Self {
        keyboardType = type
        return self
    }
    
    @discardableResult func setBorderStyle(_ style: UITextField.BorderStyle) -> Self {
        borderStyle = style
        return self
    }
}
