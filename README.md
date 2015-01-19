# NKJPagerViewController

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/nakajijapan/NKJPagerViewController?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

NKJPagerViewController is like a FragmentsTabsPager, which is in Android.
It contains an endlessly scrollable UIScrollView.

<img src="./swipe.gif" width="300" />

This viewController inspired [ICViewPager](https://github.com/iltercengiz/ICViewPager). The biggest of difference is to infinitely swipe page.

## Requirements

NKJPagerViewController higher requires Xcode 6, targeting either iOS 7.1 and above, or Mac OS 10.10 OS X Yosemite and above.

## Installation

### CocoaPods

```
pod "NKJPagerViewController"
```

## Usage

Implement as subclass of NKJPagerViewController and imprement dataSource and delegate methods in the subclass.

```
- (void)viewDidLoad
{
    self.dataSource = self;
    self.delegate = self;

    [super viewDidLoad];
}
```

### NKJPagerViewDataSource

Decide number of tabs.

```objc
- (NSUInteger)numberOfTabView
{
    return 10;
}
```

Decide width for each tab.

```
- (NSInteger)widthOfTabView
{
    return 160;
}
```

Setting a view design for each tab.

```objc
- (UIView *)viewPager:(NKJPagerViewController *)viewPager viewForTabAtIndex:(NSUInteger)index
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 160, 44)];
    label.backgroundColor = [UIColor grayColor];
    label.font = [UIFont systemFontOfSize:12.0];
    label.text = [NSString stringWithFormat:@"Tab #%lu", index * 10];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];

    return label;
}
```

Setting a view controller for each tab.

```objc
- (UIViewController *)viewPager:(NKJPagerViewController *)viewPager contentViewControllerForTabAtIndex:(NSUInteger)index
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ContentViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"ContentViewController"];
    vc.textLabel = [NSString stringWithFormat:@"Content View #%lu", index];
    return vc;
}
```

### NKJPagerViewDelegate

This method is option.

```objc
- (void)viewPager:(NKJPagerViewController *)viewPager didSwitchAtIndex:(NSInteger)index withTabs:(NSArray *)tabs
{
    // do something
}
```


## Author

[@nakajijapan](https://twitter.com/nakajijapan)


## License

NKJPagerViewController is available under the MIT license. See the LICENSE file for more info.
