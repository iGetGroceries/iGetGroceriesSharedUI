
# NnSwiftUIKit Module - iGetGroceries

A SwiftUI-based toolkit for enhancing UI in the iGetGroceries app, providing components for color management, custom UI elements, and utility extensions.

## Features

- **CategoryColor**: Easily manage category colors with the `CategoryColor` enum, which maps intuitive color names to SwiftUI `Color` instances.
- **String Extensions**: Define custom fonts for bold and detail text.
- **View Extensions**:
    - **Segmented Picker Appearance**: Set the appearance of `UISegmentedControl` with custom color and font attributes.

## Installation
To integrate the `iGetGroceriesSharedUI` package into your project, add the following dependency in your `Package.swift` file
```swift
dependencies: [
        .package(url: "https://github.com/iGetGroceries/iGetGroceriesSharedUI", from: "1.0.0")
    ]
```

## Usage

### CategoryColor

Use the `CategoryColor` enum to access predefined colors for categorizing items:

```swift
let categoryColor: Color = CategoryColor.red.color
```


### View Extensions

Customize segmented pickers with optional fonts:

```swift
.setSegmentedPickerAppearance(withCustomFont: true)
```

## License
This module is available under the MIT License.
