import UIKit

extension UITableView {
    @discardableResult public func setRegister(_ nib: UINib?, forCellReuseIdentifier identifier: String) -> Self {
        register(nib, forCellReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult public func setRegister(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String) -> Self {
        register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult public func setRegister(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String) -> Self {
        register(nib, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult public func setRegister(_ cellClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String) -> Self {
        register(cellClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
}
