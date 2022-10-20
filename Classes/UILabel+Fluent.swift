import UIKit

extension UILabel {
    @discardableResult
    public func setText(_ text: String) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult
    public func setAttributedText(_ text: NSAttributedString?) -> Self {
        attributedText = text
        return self
    }
    
    @discardableResult
    public func setTextColor(_ color: UIColor) -> Self {
        textColor = color
        return self
    }
    
    @discardableResult
    public func setFontName(_ name: String) -> Self {
        font = UIFont(name: name, size: font.pointSize)
        return self
    }
    
    @discardableResult
    public func setFontSize(_ size: CGFloat) -> Self {
        font = font.withSize(size)
        return self
    }
    
    @discardableResult
    public func setFontWeight(_ weight: UIFont.Weight) -> Self {
        font = UIFont.systemFont(ofSize: font.pointSize, weight: weight)
        return self
    }
    
    @discardableResult
    public func setNumberOfLines(_ lines: Int) -> Self {
        numberOfLines = lines
        return self
    }
    
    @discardableResult
    public func setTextAlignment(_ alignment: NSTextAlignment) -> Self {
        textAlignment = alignment
        return self
    }
    
    @discardableResult
    public func setLineBreakMode(_ mode: NSLineBreakMode) -> Self {
        lineBreakMode = mode
        return self
    }
    
    @discardableResult
    public func setLineSpacing(_ spacing: CGFloat) -> Self {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = spacing
        style.alignment = textAlignment
        
        guard let labelText = text else {
            print("[ERROR] Should assign the text before set the line spacing")
            return self
        }
        
        let attributedString: NSMutableAttributedString
        if let labelAttributedString = attributedText {
            attributedString = NSMutableAttributedString(attributedString: labelAttributedString)
        } else {
            attributedString = NSMutableAttributedString(string: labelText)
        }
        attributedString.addAttribute(.paragraphStyle, value: style, range: .init(location: 0, length: attributedString.length))
        
        attributedText = attributedString
        
        return self
    }
}
