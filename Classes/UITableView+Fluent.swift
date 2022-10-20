import UIKit

extension UITableView {
    @discardableResult
    public func setRegister(_ nib: UINib?, forCellReuseIdentifier identifier: String) -> Self {
        register(nib, forCellReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func setRegister(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String) -> Self {
        register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func setRegister(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String) -> Self {
        register(nib, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func setRegister(_ cellClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String) -> Self {
        register(cellClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func setSeparatorStyle(_ style: UITableViewCell.SeparatorStyle) -> Self {
        separatorStyle = style
        return self
    }
    
    @discardableResult
    public func setSeparatorColor(_ color: UIColor) -> Self {
        separatorColor = color
        return self
    }
    
    @discardableResult
    public func setAllowsSelection(_ allow: Bool) -> Self {
        allowsSelection = allow
        return self
    }
    
    @discardableResult
    public func setAllowsSelectionDuringEditing(_ allow: Bool) -> Self {
        allowsSelectionDuringEditing = allow
        return self
    }
    
    @discardableResult
    public func setAllowsMultipleSelection(_ allow: Bool) -> Self {
        allowsMultipleSelection = allow
        return self
    }
    
    @discardableResult
    public func setAllowsMultipleSelectionDuringEditing(_ allow: Bool) -> Self {
        allowsMultipleSelectionDuringEditing = allow
        return self
    }
}
