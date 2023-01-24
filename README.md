# fancy_field_new
[![Github stars](https://img.shields.io/github/stars/loopstack33/fancy_field_new?logo=github)](https://github.com/loopstack33/fancy_field_new)
[![Pub Version](https://img.shields.io/pub/v/fancy_field_new?color=blue&logo=dart)](https://pub.dev/packages/fancy_field_new)

Fancy Fields is a flutter widget library, include text field widgets which is fully customizable and can be extended on request.
No more extra hassle for all the extra working around with text fields.

## Installation
1) Add this to your packages pubspec.yaml file:
```yaml
dependencies:
   fancy_field_new: <latest version>
```
2) Install it
   You can install it from the command line:
```bash
$ flutter pub get
```
3) Import it
   Now in Dart code, you can use:
```dart
import 'package:fancy_field_new/fancy_field_new.dart';
```

## Recommendation
We recommend you to using the latest version.
Screenshot

<img src="https://user-images.githubusercontent.com/99548269/214272237-bcbdbd31-b138-4a69-8e6f-6d9257cb4c69.png" align="center" style="width: 50%" />

You need to use just the following code:

### Default Type

```dart
MyFancyField(
hasBorder:false,
fieldColor: white,
hint: 'Default',
hasShadow: false,),
```


### With Border

```dart
MyFancyField(
hasBorder:true,
borderColor: Colors.black.withOpacity(0.25),
fieldColor: white,
hint: 'With Border',
hasShadow: false,),
```

### With Shadow

```dart
MyFancyField(
hasBorder:false,
fieldColor: white,
hint: 'With Shadow',
shadowColor: Colors.grey,
blur: 5,
hasShadow: true),
```

### Obscure Field

```dart
MyFancyField(
obscuringCharacter: "*",
obscure: true,
hasBorder:true,
fieldColor: white,
hint: 'With Obscure',
hasShadow: false),
```

### With Prefix Widget

```dart
MyFancyField(
hasBorder:true,
align: true,
prefixIcon: const Icon(FeatherIcons.user,color: Colors.grey,),
fieldColor: white,
hint: 'With Prefix Icon',
hasShadow: false),
```

### With Suffix Widget

```dart
MyFancyField(
align: true,
suffixIcon: const Icon(FeatherIcons.mail,color: Colors.grey,),
hasBorder:true,
fieldColor: white,
hint: 'With Suffix Icon',
hasShadow: false),
```

### With Font Styling

```dart
MyFancyField(
hintStyle: const TextStyle(fontWeight: FontWeight.w300,color: Colors.black,fontSize: 18),
textStyle:  const TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 20),
hasBorder:true,
fieldColor:white,
hint: 'With Font Styling',
hasShadow: false),
```

### With Max Lines

```dart
MyFancyField(
maxLines: 6,
hasBorder:true,
fieldColor:white,
hint: 'With Max Lines',
hasShadow: false),
```