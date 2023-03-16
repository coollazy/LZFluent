import UIKit

extension UIButton {
    @discardableResult
    public func setTitle(_ title: String) -> Self {
        setTitle(title, for: .normal)
        return self
    }
    
    @discardableResult
    public func setTitleColor(_ color: UIColor) -> Self {
        setTitleColor(color, for: .normal)
        return self
    }
    
    @discardableResult
    public func setFont(_ font: UIFont?) -> Self {
        titleLabel?.setFont(font)
        return self
    }
    
    @discardableResult
    public func setFontSize(_ size: CGFloat) -> Self {
        titleLabel?.setFontSize(size)
        return self
    }
    
    @discardableResult
    public func setFontWeight(_ weight: UIFont.Weight) -> Self {
        titleLabel?.setFontWeight(weight)
        return self
    }
    
    @discardableResult
    public func setImage(_ image: UIImage?) -> Self {
        setImage(image, for: .normal)
        return self
    }
    
    @discardableResult
    public func setImageEdgeInsets(_ edgeInsets: UIEdgeInsets) -> Self {
        imageEdgeInsets = edgeInsets
        return self
    }
}
