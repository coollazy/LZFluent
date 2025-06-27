import UIKit

extension UISlider {
    @discardableResult
    public func setMinmumTrackTintColor(_ color: UIColor) -> Self {
        minimumTrackTintColor = color
        return self
    }
    
    @discardableResult
    public func setMaxmumTrackTintColor(_ color: UIColor) -> Self {
        maximumTrackTintColor = color
        return self
    }
    
    @discardableResult
    public func setThumbImage(_ image: UIImage?) -> Self {
        setThumbImage(image, for: .normal)
        return self
    }
}
