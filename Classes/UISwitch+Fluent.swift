import UIKit

extension UISwitch {
    @discardableResult func setOnTintColor(_ color: UIColor) -> Self {
        onTintColor = color
        return self
    }
    
    @discardableResult func setIsEnabled(_ enabled: Bool) -> Self {
        isEnabled = enabled
        return self
    }
}
