import UIKit

extension UISwitch {
    @discardableResult
    public func setOnTintColor(_ color: UIColor) -> Self {
        onTintColor = color
        return self
    }
    
    @discardableResult
    public func setIsEnabled(_ enabled: Bool) -> Self {
        isEnabled = enabled
        return self
    }
}
