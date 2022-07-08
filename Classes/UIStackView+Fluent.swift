import UIKit

extension UIStackView {
    @discardableResult func appendArrangedSubview(_ arrangedSubview: UIView) -> Self {
        addArrangedSubview(arrangedSubview)
        return self
    }
    
    @discardableResult func setAxis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }
    
    @discardableResult func setAlignment(_ alignment: UIStackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }
    
    @discardableResult func setDistribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }
    
    @discardableResult func setSpacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }
}
