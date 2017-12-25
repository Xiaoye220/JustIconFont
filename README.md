![pod](https://img.shields.io/badge/pod-YFIconFont-brightgreen.svg)
![iOS](https://img.shields.io/badge/iOS-8.0-green.svg)
![lisence](https://img.shields.io/badge/license-MIT-orange.svg)
![swift](https://img.shields.io/badge/swift-4.0-red.svg)

# IconFont

看了很多 IconFont 的库都是用 String 指定 Icon，个人感觉并不是很好。使用枚举的方式可以用起来更方便。

我通过枚举的方式很方便的使用 IconFont。当前仅支持 FontAwesome 和 自定义的 iconfont（可以通过 [iconfont.cn](http://www.iconfont.cn/)、[iconmoon](https://icomoon.io/)制作自定义 iconfont）
> Use iconfont by Enum.Only support FontAwesome and custom iconfont currently(you can make a custom iconfont from [iconfont.cn](http://www.iconfont.cn/)、[iconmoon](https://icomoon.io/))

## CocoaPods

```
use_frameworks!
pod 'YFIconFont'
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

UIImage 有两种创建方式，一种是使用 fontSize，一种使用 imageSize

因为有一些 Icon 不是正方形的（如上方 visa 图标），那么使用 fontSize 创建的 image 就是长方形的。如果想创建指定 size 的 image，需要使用 imageSize 创建，icon 会根据 scaleAspectFit 规则填充到指定 imageSize 的 image 中
> We can create UIImage with fontSize or imageSize.One is created according to the size of the font. Another is created according to the size of the image.

```swift
// UIImage size is 39 * 30
imageView.image = UIImage.iconFont(fontSize: 30, icon: FontAwesome.ccvisa, color: color)

// image will scaled to fit with fixed aspect.
// UIImage size is 30 * 30
imageView2.image = UIImage.iconFont(imageSize: CGSize(width: 30, height: 30), icon: FontAwesome.ccvisa, color: color)
```
#### UIBarButtonItem

UIBarButtonItem 可以设置 icon 到 image 或者 title ，因此需要指定类型。

将 UIBarButtonItem.title 设置为 icon ，看起来效果会略往上偏移
> UIBarButtonItem needs to specify the type is image or title.

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

使用自定义的 IconFont（可以通过 [iconfont.cn](http://www.iconfont.cn/)、[iconmoon](https://icomoon.io/)制作自定义 iconfont）），枚举需要实现协议 IconFontType
> Custom IconFont should implement protocol IconFontType

fontName：字体的名字，不一定是字体文件（ .ttf 文件）的名字
> fontName：The fully specified name of the font. This name incorporates both the font family name and the specific style information for the font.

### Create
```swift
public enum CustomIconFont: String {
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
label1.iconFont(size: 25, icon: CustomIconFont.clock, color:color)
label2.iconFont(size: 30, icon: CustomIconFont.feedback, color: color)
label3.iconFont(size: 35, icon: CustomIconFont.shoppingCart, color: color)
```

