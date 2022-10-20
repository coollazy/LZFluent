import UIKit

extension UIImageView {
    @discardableResult
    public func setImage(_ image: UIImage?) -> Self {
        self.image = image
        return self
    }
}
