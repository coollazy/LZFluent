import UIKit

extension UIView {
    @discardableResult func setFrame(_ frame: CGRect) -> Self {
        self.frame = frame
        return self
    }
    
    @discardableResult func setBounds(_ bounds: CGRect) -> Self {
        self.bounds = bounds
        return self
    }
    
    @discardableResult func setCenter(_ center: CGPoint) -> Self {
        self.center = center
        return self
    }
    
    @discardableResult func setTransform(_ transform: CGAffineTransform) -> Self {
        self.transform = transform
        return self
    }
    
    @discardableResult func setAlpha(_ alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }
    
    @discardableResult func setIsOpaque(_ opaque: Bool) -> Self {
        isOpaque = opaque
        return self
    }
    
    @discardableResult func setClipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult func setContentMode(_ mode: UIView.ContentMode) -> Self {
        contentMode = mode
        return self
    }
    
    @discardableResult func setSize(_ size: CGSize) -> Self {
        frame = CGRect(x: frame.origin.x, y: frame.origin.y, width: size.width, height: size.height)
        return self
    }
    
    @discardableResult func setBackgroundColor(_ color: UIColor) -> Self {
        backgroundColor = color
        return self
    }
    
    @discardableResult func setIsHidden(_ hidden: Bool) -> Self {
        isHidden = hidden
        return self
    }
    
    @discardableResult func setTintColor(_ color: UIColor) -> Self {
        tintColor = color
        return self
    }
    
    @discardableResult func setUserInteractionEnabled(_ enabled: Bool) -> Self {
        isUserInteractionEnabled = enabled
        return self
    }
    
    @discardableResult func setBorderColor(_ color: UIColor) -> Self {
        layer.borderColor = color.cgColor
        return self
    }
    
    @discardableResult func setBorderWidth(_ width: CGFloat) -> Self {
        layer.borderWidth = width
        return self
    }
}
