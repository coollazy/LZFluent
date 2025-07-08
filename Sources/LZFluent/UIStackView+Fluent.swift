import UIKit

extension UIStackView {
    @discardableResult
    public func appendArrangedSubview(_ arrangedSubview: UIView) -> Self {
        addArrangedSubview(arrangedSubview)
        return self
    }
    
    @discardableResult
    public func appendArrangedSubviews(_ arrangedSubviews: [UIView]) -> Self {
        arrangedSubviews.forEach { addArrangedSubview($0) }
        return self
    }
    
    @discardableResult
    public func setAxis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }
    
    @discardableResult
    public func setAlignment(_ alignment: UIStackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }
    
    @discardableResult
    public func setDistribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }
    
    @discardableResult
    public func setSpacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }
}
