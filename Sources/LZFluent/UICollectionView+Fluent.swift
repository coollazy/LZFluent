import UIKit

extension UICollectionView {
    @discardableResult
    public func setRegister(_ nib: UINib?, forCellWithReuseIdentifier identifier: String) -> Self {
        register(nib, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func setRegister(_ cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String) -> Self {
        register(cellClass, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func setRegister(_ nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String) -> Self {
        register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func setRegister(_ cellClass: AnyClass?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String) -> Self {
        register(cellClass, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func setAllowsSelection(_ allow: Bool) -> Self {
        allowsSelection = allow
        return self
    }
    
    @discardableResult
    public func setAllowsMultipleSelection(_ allow: Bool) -> Self {
        allowsMultipleSelection = allow
        return self
    }
    
    @discardableResult
    public func setDelegate(_ delegate: UICollectionViewDelegate?) -> Self {
        self.delegate = delegate
        return self
    }
    
    @discardableResult
    public func setCollectionViewLayout(_ layout: UICollectionViewLayout) -> Self {
        collectionViewLayout = layout
        return self
    }
}
