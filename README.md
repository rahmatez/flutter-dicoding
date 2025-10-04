# Renada Stationary

Aplikasi katalog alat tulis dengan fitur melihat daftar produk, detail produk, dan keranjang belanja.

## ✨ Fitur

- 📱 **HomePage** - Menampilkan daftar produk alat tulis dalam grid yang responsif
- 🔍 **DetailPage** - Menampilkan informasi detail produk dengan animasi hero
- 🛒 **CartPage** - Mengelola keranjang belanja dengan fitur tambah/kurang quantity
- ℹ️ **AboutPage** - Informasi tentang Renada Stationary

## 🎨 Desain

- **Tema Modern** dengan warna pastel (Soft Blue, Soft Pink, Soft Mint)
- **Font**: Google Fonts - Poppins
- **Animasi**: Hero transition, slide transition, fade animation
- **Responsive**: Mendukung tampilan mobile dan web browser
- **UI Components**: Card, GridView, ListView dengan gradient dan shadow

## 📋 Requirements yang Dipenuhi

✅ Menggunakan **StatelessWidget** (HomePage, DetailPage, AboutPage)  
✅ Menggunakan **StatefulWidget** (CartPage)  
✅ Minimal 3 halaman + AboutPage (bonus)  
✅ Implementasi **Navigation** (Navigator.push & Navigator.pop)  
✅ Tampilan **responsive** tanpa overflow  
✅ Tema **modern & clean** dengan warna pastel  
✅ Font **Poppins** untuk tampilan elegan  
✅ **Animasi transisi** dan efek pada tombol  
✅ Mock data produk lengkap  
✅ Struktur folder terorganisir (pages/, models/, widgets/, theme.dart)

## 📂 Struktur Folder

```
lib/
├── models/
│   ├── product.dart         # Model produk dengan mock data
│   └── cart_item.dart        # Model item keranjang
├── pages/
│   ├── home_page.dart        # Halaman utama (StatelessWidget)
│   ├── detail_page.dart      # Detail produk (StatelessWidget)
│   ├── cart_page.dart        # Keranjang belanja (StatefulWidget)
│   └── about_page.dart       # Tentang toko
├── widgets/
│   └── product_card.dart     # Custom widget untuk card produk
├── theme.dart                # Konfigurasi tema aplikasi
└── main.dart                 # Entry point aplikasi

assets/
└── images/                   # Folder untuk assets gambar
```

## 🚀 Cara Menjalankan

1. Pastikan Flutter sudah terinstall
2. Clone/Download project ini
3. Buka terminal dan jalankan:

```bash
flutter pub get
flutter run
```

## 📦 Dependencies

- **flutter**: SDK Flutter
- **google_fonts**: ^6.1.0 - Untuk font Poppins

## 📱 Screenshot Fitur

### HomePage
- Grid view produk yang responsif
- Search bar untuk pencarian
- Kategori produk dengan icon
- Floating action button ke keranjang

### DetailPage
- Hero animation dari gambar produk
- Informasi lengkap produk
- Badge kategori dengan gradient
- Tombol "Tambah ke Keranjang"

### CartPage
- List item dengan swipe to delete
- Kontrol quantity (tambah/kurang)
- Summary total harga
- Tombol checkout

### AboutPage
- Informasi tentang Renada Stationary
- Keunggulan produk
- Kontak informasi

## 🎯 Highlight

- **UI Modern**: Desain clean dengan gradient dan shadow yang elegan
- **Smooth Animation**: Transisi halaman yang smooth dan menarik
- **User Experience**: Navigasi intuitif dengan feedback visual
- **Responsive Layout**: Menyesuaikan dengan berbagai ukuran layar
- **Code Quality**: Struktur folder yang rapi dan mudah di-maintain

## 👨‍💻 Developer

Dibuat untuk submission Dicoding - Flutter Fundamental oleh Rahmat Ashari

---

**Renada Stationary** - Your Trusted Stationery Store 📚✏️
