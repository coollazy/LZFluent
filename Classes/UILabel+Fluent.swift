import UIKit

extension UILabel {
    @discardableResult func setText(_ text: String) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult func setAttributedText(_ text: NSAttributedString?) -> Self {
        attributedText = text
        return self
    }
    
    @discardableResult func setTextColor(_ color: UIColor) -> Self {
        textColor = color
        return self
    }
    
    @discardableResult func setFontSize(_ size: CGFloat) -> Self {
        font = UIFont.systemFont(ofSize: size)
        return self
    }
    
    @discardableResult func setFontWeight(_ weight: UIFont.Weight) -> Self {
        font = UIFont.systemFont(ofSize: font.pointSize, weight: weight)
        return self
    }
    
    @discardableResult func setNumberOfLines(_ lines: Int) -> Self {
        numberOfLines = lines
        return self
    }
    
    @discardableResult func setTextAlignment(_ alignment: NSTextAlignment) -> Self {
        textAlignment = alignment
        return self
    }
    
    @discardableResult func setLineBreakMode(_ mode: NSLineBreakMode) -> Self {
        lineBreakMode = mode
        return self
    }
    
    @discardableResult func setLineSpacing(_ spacing: CGFloat) -> Self {
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
