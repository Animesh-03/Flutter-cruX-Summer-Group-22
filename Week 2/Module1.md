---
label: Images, Assets and Packages
order: 100
---

# Images

If you noticed the flutter assignment last week was similar to displaying a splash screen with the logo of an app (A wonky logo nonetheless). But surely there would be a way to display logos other than creating a logo with with containers and other similar layout widgets right??

=== A bad meme

![**Absolutely YES!**](../static/meme1.png)

===

## Network Image

You can display an image which is hosted somewhere on the internet by simply providing the URL of the image to the [`Image.network`](https://api.flutter.dev/flutter/widgets/Image/Image.network.html) widget. You can pass additional parameters to the widget like `width` and `height` to manage its appearance. You can look at more of the additional parameters [here](https://api.flutter.dev/flutter/widgets/Image/Image.network.html) in its constructor.

## Placeholder Widget

What if you know that one day there will be an image in a certain place but you don't have the perfect image yet? This is where the [`Placeholder`](https://api.flutter.dev/flutter/widgets/Placeholder-class.html) widget comes in to save the day.

This widget can also be used to build quick prototypes to your apps as it can act as a placeholder not only for images but various other components of your app like a paragraph, a heading, an app bar etc.

## Assets

What if you have an image that's on your project folder instead of somewhere on the web? This is where `assets` come in.

You need to "declare" your images before-hand to use them in your app.
This declaration is to be done in your `pubspec.yaml` file which is in the root of your project folder.

Let's say you have an image named `meme.png` in a folder called `static` which is located in your root folder. To declare this image in your `pubspec.yaml`

```yaml
flutter:
    assets:
        - static/meme.png
```

To display this asset in your flutter app use the `AssetImage` widget:
```dart
Image(image: AssetImage('/static/meme.png'))
```

This is just a gist of using assets. There are many more ways to use assets and more specifically declare your assets in `pubspec.yaml`

You can read more about adding assets [here](https://docs.flutter.dev/development/ui/assets-and-images)

## Adding Packages

Like most of the frameworks available, flutter too has a bunch of packages available which can be added to your project using `pub`.

`pub` is the `npm` of flutter.

You can add a package by either using the command `flutter pub add <package_name>` or by adding the package in `pubspec.yaml`.

```yaml
    dependencies:
        firebase_core: ^1.18.0
```

The above adds the `firebase_core` package with a version of 1.18.0 or above if available.

We will be using various packages throughout the sg. You can browse the available packages in [pub.dev](https://pub.dev/)

We will be covering Navigation in flutter in the next module. In the meanwhile you can mess around with your new found knowledge on adding packages. You can look at [this](https://pub.dev/packages/flutter_launcher_icons) package which can be used to change the app icon which will be displayed on your device. There are more painful ways to change the icon too by messing around with `android` and `ios` folders in your project but this will be upto you.

