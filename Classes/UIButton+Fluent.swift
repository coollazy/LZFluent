import UIKit

extension UIButton {
    @discardableResult func setTitle(_ title: String) -> Self {
        setTitle(title, for: .normal)
        return self
    }
    
    @discardableResult func setTitleColor(_ color: UIColor) -> Self {
        setTitleColor(color, for: .normal)
        return self
    }
    
    @discardableResult func setFontSize(_ size: CGFloat) -> Self {
        titleLabel?.setFontSize(size)
        return self
    }
    
    @discardableResult func setFontWeight(_ weight: UIFont.Weight) -> Self {
        titleLabel?.setFontWeight(weight)
        return self
    }
    
    @discardableResult func setImage(_ image: UIImage?) -> Self {
        setImage(image, for: .normal)
        return self
    }
    
    @discardableResult func setSemanticContentAttribute(_ attribute: UISemanticContentAttribute) -> Self {
        semanticContentAttribute = attribute
        return self
    }
}
