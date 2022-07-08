import UIKit

extension UIImageView {
    @discardableResult func setImage(_ image: UIImage?) -> Self {
        self.image = image
        return self
    }
}
