# LZFluent

The extensions of fluent interface for UIKit

# How to install

### CocoaPods

```
pod 'LZFluent', '~> 1.0.4'
```

### SPM

- Package.swift 的 dependencies 增加

```
.package(name: "LZFluent", url: "https://github.com/coollazy/LZFluent", .upToNextMajor(from: "1.0.4")),
```

- target 的 dependencies 增加

```
.product(name: "LZFluent", package: "LZFluent"),
```

# How to use

### UIButton

```
let button = UIButton()
	.setTitle("ButtonTitle")
	.setTitleColor(.white)
	.setFontSize(17)
	.setFontWeight(.bold)
	.setImage(UIImage(systemName: "icon name"))
```

### UIImageView

```
let imageView = UIImageView()
	.setImage(UIImage(named: "image name"))
```

### UILabel

```
let label = UILabel()
	.setText("label text")
	.setTextColor(.darkGray)
	.setFontSize(18)
	.setFontWeight(.semibold)
	.setNumberOfLines(-1)
	.setTextAlignment(.right)
```

### UINavigationBar

```
UINavigationBar
	.setTranslucent(false)
	.setTitleColor(.main)
	.setTitleFontSize(24)
	.setTitleFontWeight(.bold)
	.setBarBackgroundColor(.background)
```

### UIScrollView

```
let scrollView = UIScrollView()
	.setContentOffset(.init(x: 10, y: 10))
	.setContentSize(.init(width: 100, height: 100))
	.setContentInset(.init(top: 0, left: 0, bottom: 0, right: 0))
	.setPagingEnabled(true)
	.setScrollEnabled(false)
	.setHorizontalScrollIndicator(true)
	.setVerticalScrollIndicator(false)
	.setContentInsetAdjustmentBehavior(.automatic)
```

### UIStackView

```
let stackView = UIStackView()
	.appendArrangedSubview(UIView())
	.setAxis(.horizontal)
	.setAlignment(.center)
	.setDistribution(.fill)
	.setSpacing(10)
```

### UISwitch

```
let switchButton = UISwitch()
	.setOnTintColor(.yellow)
	.setIsEnabled(false)
```

### UITabBar

```
UITabBar
    .setTranslucent(false)
    .setBarItemSelectedColor(.white)
    .setBarBackgroundColor(.main)
```

### UITableView

```
let tableView = UITableView()
	.setRegister(UINib(nibName: "CellIdentifier", bundle: nil), forCellReuseIdentifier: "CellIdentifier")
	.setSeparatorColor(.gray)
	.setAllowsSelection(true)
	.setAllowsSelectionDuringEditing(true)
	.setAllowsMultipleSelection(true)
	.setAllowsMultipleSelectionDuringEditing(true)
```

### UITextField

```
let textField = UITextField()
	.setText("label text")
	.setTextColor(.darkGray)
	.setFontSize(18)
	.setFontWeight(.semibold)
	.setPlaceholder("Placeholder")
	.setClearButtonMode(.whileEditing)
	.setAutocapitalizationType(.none)
	.setAutocorrectionType(.no)
	.setTextAlignment(.right)
	.setClearButtonMode(.always)
	.setIsSecureTextEntry(true)
	.setKeyboardType(.default)
	.setBorderStyle(.none)
```

### UIView

```
let view = UIView()
	.setFrame(.init(x: 0, y: 0, width: 100, height: 100))
	.setBounds(.init(x: 0, y: 0, width: 100, height: 100))
	.setCenter(.init(x: 50, y: 50))
	.setTransform(.init(a: 0, b: 0, c: 0, d: 0, tx: 0, ty: 0))
	.setAlpha(0.7)
	.setIsOpaque(true)
	.setClipsToBounds(true)
	.setContentMode(.scaleToFill)
	.setSize(.init(width: 100, height: 100))
	.setBackgroundColor(.gray)
	.setIsHidden(true)
	.setTintColor(.red)
	.setUserInteractionEnabled(true)
	.setBorderColor(.brown)
	.setBorderWidth(1.5)
	.setShadowColor(.darkGray)
	.setShadowOpacity(0.5)
	.setShadowRadius(3)
	.setShadowOffset(.init(width: 100, height: 100))
	.setTranslatesAutoresizingMaskIntoConstraints(false)
```
