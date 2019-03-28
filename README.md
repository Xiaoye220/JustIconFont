![pod](https://img.shields.io/badge/pod-JustIconFont-brightgreen.svg)
![iOS](https://img.shields.io/badge/iOS-8.0-green.svg)
![lisence](https://img.shields.io/badge/license-MIT-orange.svg)
![swift](https://img.shields.io/badge/swift-5.0-red.svg)

# IconFont

Use iconfont by Enum.Only support FontAwesome and custom iconfont currently(you can make a custom iconfont from [iconfont.cn](http://www.iconfont.cn/)、[iconmoon](https://icomoon.io/))

## CocoaPods

```
use_frameworks!
pod 'JustIconFont'

# support to FontAwesome
pod 'JustIconFont/FontAwesome'
```

## Usage

![ScreenShot](https://github.com/Xiaoye220/IconFont/blob/master/ScreenShot/ScreenShot.png)

#### UILabel

```swift
label.iconFont(size: 25, icon: FontAwesome.github)
```

#### UIButton

```swift
button.iconFont(size: 30, icon: FontAwesome.weixin, color: color)
```

#### UIImage

We can create UIImage with fontSize or imageSize.One is created according to the size of the font. Another is created according to the size of the image.

```swift
// UIImage size is 39 * 30
imageView.image = UIImage.iconFont(fontSize: 30, icon: FontAwesome.ccvisa, color: color)

// image will scaled to fit with fixed aspect.
// UIImage size is 30 * 30
imageView2.image = UIImage.iconFont(imageSize: CGSize(width: 30, height: 30), icon: FontAwesome.ccvisa, color: color)
```
#### UIBarButtonItem

UIBarButtonItem needs to specify the type is image or title.

```swift
barButtonItem.iconFont(size: 25, icon: FontAwesome.apple, color: color, type: .image)

barButtonItem2.iconFont(size: 25, icon: FontAwesome.apple, color: color, type: .title)
```
#### UITabBarItem
```swift
leftTabBarItem.image = UIImage.iconFont(fontSize: 25, icon: FontAwesome.chrome)
leftTabBarItem.selectedImage = UIImage.iconFont(fontSize: 25, icon: FontAwesome.chrome, color: color).withRenderingMode(.alwaysOriginal)
leftTabBarItem.title = FontAwesome.chrome.rawValue

rightTabBarItem.image = UIImage.iconFont(fontSize: 25, icon: FontAwesome.firefox)
rightTabBarItem.selectedImage = UIImage.iconFont(fontSize: 25, icon: FontAwesome.firefox, color: color).withRenderingMode(.alwaysOriginal)
rightTabBarItem.title = FontAwesome.firefox.rawValue
```
## Custom IconFont

Custom IconFont should implement protocol IconFontType

fontName：The fully specified name of the font. This name incorporates both the font family name and the specific style information for the font.

### Create
```swift
public enum MyIconFont: String {
    case feedback = "\u{e656}"
    case search = "\u{e651}"
    case home = "\u{e64f}"
    case clock = "\u{e648}"
    case like = "\u{e643}"
    case shoppingCart = "\u{e63f}"
}

extension CustomIconFont: IconFontType {

    public static var fontFilePath: String? = Bundle.main.path(forResource: "iconfont", ofType: "ttf")

    public static var fontName: String {
        return "iconfont"
        }

    public var unicode: String {
        return self.rawValue
    }
}
```
### Usage
```swift
label1.iconFont(size: 25, icon: MyIconFont.clock, color: color)
label2.iconFont(size: 30, icon: MyIconFont.feedback, color: color)
label3.iconFont(size: 35, icon: MyIconFont.shoppingCart, color: color)
```

