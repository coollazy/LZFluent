import UIKit

extension UIView {
    @discardableResult public func setFrame(_ frame: CGRect) -> Self {
        self.frame = frame
        return self
    }
    
    @discardableResult public func setBounds(_ bounds: CGRect) -> Self {
        self.bounds = bounds
        return self
    }
    
    @discardableResult public func setCenter(_ center: CGPoint) -> Self {
        self.center = center
        return self
    }
    
    @discardableResult public func setTransform(_ transform: CGAffineTransform) -> Self {
        self.transform = transform
        return self
    }
    
    @discardableResult public func setAlpha(_ alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }
    
    @discardableResult public func setIsOpaque(_ opaque: Bool) -> Self {
        isOpaque = opaque
        return self
    }
    
    @discardableResult public func setClipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult public func setContentMode(_ mode: UIView.ContentMode) -> Self {
        contentMode = mode
        return self
    }
    
    @discardableResult public func setSize(_ size: CGSize) -> Self {
        frame = CGRect(x: frame.origin.x, y: frame.origin.y, width: size.width, height: size.height)
        return self
    }
    
    @discardableResult public func setBackgroundColor(_ color: UIColor) -> Self {
        backgroundColor = color
        return self
    }
    
    @discardableResult public func setIsHidden(_ hidden: Bool) -> Self {
        isHidden = hidden
        return self
    }
    
    @discardableResult public func setTintColor(_ color: UIColor) -> Self {
        tintColor = color
        return self
    }
    
    @discardableResult public func setUserInteractionEnabled(_ enabled: Bool) -> Self {
        isUserInteractionEnabled = enabled
        return self
    }
    
    @discardableResult public func setBorderColor(_ color: UIColor) -> Self {
        layer.borderColor = color.cgColor
        return self
    }
    
    @discardableResult public func setBorderWidth(_ width: CGFloat) -> Self {
        layer.borderWidth = width
        return self
    }
}
