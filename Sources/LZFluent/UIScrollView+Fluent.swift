import UIKit

extension UIScrollView {
    @discardableResult
    public func setContentOffset(_ offset: CGPoint) -> Self {
        contentOffset = offset
        return self
    }
    
    @discardableResult
    public func setContentSize(_ size: CGSize) -> Self {
        contentSize = size
        return self
    }

    @discardableResult
    public func setContentInset(_ inset: UIEdgeInsets) -> Self {
        contentInset = inset
        return self
    }
    
    @discardableResult
    public func setDelegate(_ delegate: UIScrollViewDelegate?) -> Self {
        self.delegate = delegate
        return self
    }
    
    @discardableResult
    public func setPagingEnabled(_ enabled: Bool) -> Self {
        isPagingEnabled = enabled
        return self
    }
    
    @discardableResult
    public func setScrollEnabled(_ enabled: Bool) -> Self {
        isScrollEnabled = enabled
        return self
    }
    
    @discardableResult
    public func setHorizontalScrollIndicator(_ showed: Bool) -> Self {
        showsHorizontalScrollIndicator = showed
        return self
    }
    
    @discardableResult
    public func setVerticalScrollIndicator(_ showed: Bool) -> Self {
        showsVerticalScrollIndicator = showed
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func setContentInsetAdjustmentBehavior(_ behavior: UIScrollView.ContentInsetAdjustmentBehavior) -> Self {
        contentInsetAdjustmentBehavior = behavior
        return self
    }
}
