# Troubleshooting - Dart Compiler Crash di Chrome

## ❌ Masalah
```
ExceptionCode=-1073741819, ExceptionFlags=0
the Dart compiler exited unexpectedly.
Failed to compile application.
```

## 🔍 Penyebab
Crash ini biasanya disebabkan oleh:
1. **Google Fonts** - Masalah saat compile untuk web
2. **Memory overflow** - Compiler kehabisan memory
3. **Corrupted cache** - Build cache yang rusak
4. **Large assets** - Terlalu banyak network images

## ✅ Solusi yang Sudah Dicoba

### 1. Flutter Clean
```bash
flutter clean
flutter pub get
```

### 2. Update Theme (Temporary Fix)
Dibuat `theme_simple.dart` yang **tidak menggunakan Google Fonts** untuk menghindari crash di web.

File `main.dart` diupdate untuk menggunakan simple theme:
```dart
import 'theme_simple.dart' as simple;
theme: simple.AppTheme.lightTheme,
```

## 🚀 Cara Run Aplikasi

### Option 1: Run di Windows Desktop (Recommended)
```bash
flutter run -d windows
```
✅ Lebih stabil, tidak ada masalah Google Fonts

### Option 2: Run di Chrome dengan Simple Theme
```bash
flutter run -d chrome
```
✅ Menggunakan theme tanpa Google Fonts

### Option 3: Run di Mobile Emulator
```bash
flutter emulators --launch <emulator_name>
flutter run
```

## 📱 Untuk Submission Dicoding

**PENTING:** Submission untuk Android (APK), bukan web!

```bash
# 1. Kembalikan ke theme original (dengan Google Fonts)
# Edit main.dart:
# import 'theme.dart';
# theme: AppTheme.lightTheme,

# 2. Build APK
flutter build apk --release

# 3. Clean untuk submission
flutter clean

# 4. Compress ke ZIP
```

## 🔧 Fix Permanent (Opsional)

Jika ingin tetap run di Chrome dengan Google Fonts:

### Option A: Update Flutter SDK
```bash
flutter upgrade
```

### Option B: Gunakan Conditional Import
```dart
// theme_web.dart untuk web
// theme.dart untuk mobile
import 'theme.dart' if (dart.library.html) 'theme_simple.dart';
```

### Option C: Tambahkan di pubspec.yaml
```yaml
flutter:
  fonts:
    - family: Poppins
      fonts:
        - asset: fonts/Poppins-Regular.ttf
        - asset: fonts/Poppins-Bold.ttf
          weight: 700
```

## 📋 Kesimpulan

**Untuk Development:**
- ✅ Gunakan Windows Desktop (`flutter run -d windows`)
- ✅ Atau gunakan simple theme untuk web

**Untuk Submission:**
- ✅ Build APK dengan theme original (Google Fonts)
- ✅ Test di Android emulator/device
- ✅ Clean dan compress

**Status:** Aplikasi berfungsi normal, hanya masalah compiler saat run di Chrome. Untuk submission Dicoding (APK) tidak ada masalah! 🎉
