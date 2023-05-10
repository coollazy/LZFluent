import UIKit

extension UITextField {
    @discardableResult
    public func setText(_ text: String) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult
    public func setPlaceholder(_ placeholder: String) -> Self {
        self.placeholder = placeholder
        return self
    }
    
    @discardableResult
    public func setAttributedPlaceholder(_ attribute: NSAttributedString?) -> Self {
        attributedPlaceholder = attribute
        return self
    }
    
    @discardableResult
    public func setTextColor(_ color: UIColor) -> Self {
        textColor = color
        return self
    }
    
    @discardableResult
    public func setFont(_ font: UIFont?) -> Self {
        self.font = font
        return self
    }
    
    @discardableResult
    public func setFontSize(_ ofSize: CGFloat) -> Self {
        font = UIFont.systemFont(ofSize: ofSize)
        return self
    }
    
    @discardableResult
    public func setFontWeight(_ weight: UIFont.Weight) -> Self {
        let fontSize = font?.pointSize ?? 12
        font = UIFont.systemFont(ofSize: fontSize, weight: weight)
        return self
    }
    
    @discardableResult
    public func setTextAlignment(_ alignment: NSTextAlignment) -> Self {
        textAlignment = alignment
        return self
    }
    
    @discardableResult
    public func setClearButtonMode(_ mode: UITextField.ViewMode) -> Self {
        clearButtonMode = mode
        return self
    }
    
    @discardableResult
    public func setAutocapitalizationType(_ type: UITextAutocapitalizationType) -> Self {
        autocapitalizationType = type
        return self
    }
    
    @discardableResult
    public func setAutocorrectionType(_ type: UITextAutocorrectionType) -> Self {
        autocorrectionType = type
        return self
    }
    
    @discardableResult
    public func setIsSecureTextEntry(_ isSecure: Bool) -> Self {
        isSecureTextEntry = isSecure
        return self
    }
    
    @discardableResult
    public func setKeyboardType(_ type: UIKeyboardType) -> Self {
        keyboardType = type
        return self
    }
    
    @discardableResult
    public func setBorderStyle(_ style: UITextField.BorderStyle) -> Self {
        borderStyle = style
        return self
    }
    
    @discardableResult
    public func setLeftView(_ view: UIView?) -> Self {
        leftView = view
        return self
    }
    
    @discardableResult
    public func setLeftViewMode(_ mode: UITextField.ViewMode) -> Self {
        leftViewMode = mode
        return self
    }
    
    @discardableResult
    public func setRightView(_ view: UIView?) -> Self {
        rightView = view
        return self
    }
    
    @discardableResult
    public func setRightViewMode(_ mode: UITextField.ViewMode) -> Self {
        rightViewMode = mode
        return self
    }
}
