import Foundation
import UIKit

extension UINavigationBar {
    @discardableResult
    public func setTranslucent(_ translucent: Bool) -> Self {
        if #available(iOS 13, *) {
            if translucent {
                standardAppearance.configureWithTransparentBackground()
            } else {
                standardAppearance.configureWithOpaqueBackground()
            }
            scrollEdgeAppearance = standardAppearance
        } else {
            isTranslucent = translucent
        }
        return self
    }
    
    @discardableResult
    public func setTitleColor(_ color: UIColor) -> Self {
        if #available(iOS 13, *) {
            standardAppearance.titleTextAttributes.updateValue(color, forKey: NSAttributedString.Key.foregroundColor)
            standardAppearance.buttonAppearance.normal.titleTextAttributes.updateValue(color, forKey: NSAttributedString.Key.foregroundColor)
            scrollEdgeAppearance = standardAppearance
        } else {
            titleTextAttributes?.updateValue(color, forKey: NSAttributedString.Key.foregroundColor)
        }
        return self
    }
    
    @discardableResult
    public func setTitleFontSize(_ size: CGFloat) -> Self {
        var newFont = UIFont.systemFont(ofSize: size)
        if #available(iOS 13, *) {
            if let originalFont = standardAppearance.titleTextAttributes[NSAttributedString.Key.font] as? UIFont {
                newFont = originalFont.withSize(size)
            }
            standardAppearance.titleTextAttributes.updateValue(newFont, forKey: NSAttributedString.Key.font)
            scrollEdgeAppearance = standardAppearance
        } else {
            if titleTextAttributes == nil {
                titleTextAttributes = [:]
            }
            if let originalFont = titleTextAttributes?[NSAttributedString.Key.font] as? UIFont {
                newFont = originalFont.withSize(size)
            }
            titleTextAttributes?.updateValue(newFont, forKey: NSAttributedString.Key.font)
        }
        return self
    }
    
    @discardableResult
    public func setTitleFontWeight(_ weight: UIFont.Weight) -> Self {
        var newFont = UIFont.systemFont(ofSize: 17, weight: weight)
        if #available(iOS 13, *) {
            if let originalFont = standardAppearance.titleTextAttributes[NSAttributedString.Key.font] as? UIFont {
                newFont = newFont.withSize(originalFont.pointSize)
            }
            standardAppearance.titleTextAttributes.updateValue(newFont, forKey: NSAttributedString.Key.font)
            scrollEdgeAppearance = standardAppearance
        } else {
            if titleTextAttributes == nil {
                titleTextAttributes = [:]
            }
            if let originalFont = titleTextAttributes?[NSAttributedString.Key.font] as? UIFont {
                newFont = newFont.withSize(originalFont.pointSize)
            }
            titleTextAttributes?.updateValue(newFont, forKey: NSAttributedString.Key.font)
        }
        return self
    }
    
    @discardableResult
    public func setBarBackgroundColor(_ color: UIColor) -> Self {
        if #available(iOS 13, *) {
            standardAppearance.backgroundColor = color
            scrollEdgeAppearance = standardAppearance
        } else {
            barTintColor = color
        }
        return self
    }
}

extension UINavigationBar {
    @discardableResult
    static public func setTranslucent(_ translucent: Bool) -> UINavigationBar.Type {
        if #available(iOS 15.0, *) {
            let scrollEdgeAppearance = appearance().scrollEdgeAppearance ?? UINavigationBarAppearance()
            if translucent {
                scrollEdgeAppearance.configureWithTransparentBackground()
            }
            else {
                scrollEdgeAppearance.configureWithOpaqueBackground()
            }
            
            appearance().standardAppearance = scrollEdgeAppearance
            appearance().scrollEdgeAppearance = scrollEdgeAppearance
        }
        else {
            appearance().isTranslucent = false
        }
        return self
    }
    
    @discardableResult
    static public func setTitleColor(_ color: UIColor) -> UINavigationBar.Type {
        if #available(iOS 15.0, *) {
            let scrollEdgeAppearance = appearance().scrollEdgeAppearance ?? UINavigationBarAppearance()
            scrollEdgeAppearance.titleTextAttributes.updateValue(color, forKey: .foregroundColor)
            
            appearance().standardAppearance = scrollEdgeAppearance
            appearance().scrollEdgeAppearance = scrollEdgeAppearance
        }
        else {
            if appearance().titleTextAttributes == nil {
                appearance().titleTextAttributes = [:]
            }
            appearance().titleTextAttributes?.updateValue(color, forKey: .foregroundColor)
        }
        appearance().tintColor = color
        return self
    }
    
    @discardableResult
    static public func setTitleFontSize(_ size: CGFloat) -> UINavigationBar.Type {
        var newFont = UIFont.systemFont(ofSize: size)
        if #available(iOS 15.0, *) {
            let scrollEdgeAppearance = appearance().scrollEdgeAppearance ?? UINavigationBarAppearance()
            
            if let originalFont = scrollEdgeAppearance.titleTextAttributes[NSAttributedString.Key.font] as? UIFont {
                newFont = originalFont.withSize(size)
            }
            scrollEdgeAppearance.titleTextAttributes.updateValue(newFont, forKey: NSAttributedString.Key.font)
            
            appearance().standardAppearance = scrollEdgeAppearance
            appearance().scrollEdgeAppearance = scrollEdgeAppearance
        }
        else {
            if appearance().titleTextAttributes == nil {
                appearance().titleTextAttributes = [:]
            }
            if let originalFont = appearance().titleTextAttributes?[NSAttributedString.Key.font] as? UIFont {
                newFont = originalFont.withSize(size)
            }
            appearance().titleTextAttributes?.updateValue(newFont, forKey: NSAttributedString.Key.font)
        }
        return self
    }
    
    @discardableResult
    static public func setTitleFontWeight(_ weight: UIFont.Weight) -> UINavigationBar.Type {
        var newFont = UIFont.systemFont(ofSize: 17, weight: weight)
        if #available(iOS 15.0, *) {
            let scrollEdgeAppearance = appearance().scrollEdgeAppearance ?? UINavigationBarAppearance()
            
            if let originalFont = scrollEdgeAppearance.titleTextAttributes[NSAttributedString.Key.font] as? UIFont {
                newFont = newFont.withSize(originalFont.pointSize)
            }
            scrollEdgeAppearance.titleTextAttributes.updateValue(newFont, forKey: NSAttributedString.Key.font)
            
            appearance().standardAppearance = scrollEdgeAppearance
            appearance().scrollEdgeAppearance = scrollEdgeAppearance
        }
        else {
            if appearance().titleTextAttributes == nil {
                appearance().titleTextAttributes = [:]
            }
            if let originalFont = appearance().titleTextAttributes?[NSAttributedString.Key.font] as? UIFont {
                newFont = newFont.withSize(originalFont.pointSize)
            }
            appearance().titleTextAttributes?.updateValue(newFont, forKey: NSAttributedString.Key.font)
        }
        return self
    }
    @discardableResult
    static public func setBarBackgroundColor(_ color: UIColor) -> UINavigationBar.Type {
        if #available(iOS 15.0, *) {
            let scrollEdgeAppearance = appearance().scrollEdgeAppearance ?? UINavigationBarAppearance()
            scrollEdgeAppearance.backgroundColor = color
            
            appearance().standardAppearance = scrollEdgeAppearance
            appearance().scrollEdgeAppearance = scrollEdgeAppearance
        }
        else {
            appearance().barTintColor = color
        }
        return self
    }
}
