# Penjelasan Detail Implementasi

## 🏠 HomePage (StatelessWidget)

### Widget yang Digunakan:
- `CustomScrollView` - Untuk scrolling yang smooth dengan sliver
- `SliverAppBar` - App bar yang bisa expand/collapse dengan gradient
- `FlexibleSpaceBar` - Background dengan gradient dan decorative circles
- `SliverGrid` - Grid layout untuk produk yang responsive
- `Hero` - Untuk transisi animasi ke detail page
- `FloatingActionButton.extended` - FAB ke halaman cart

### Fitur:
1. **Header dengan Gradient**
   - Warna soft blue ke mint green
   - Decorative circles sebagai background
   - Icon shopping bag

2. **Search Bar**
   - Design modern dengan shadow
   - Icon search di kiri
   - Placeholder text

3. **Category Section**
   - Horizontal scroll
   - Chips dengan gradient dan shadow
   - Icon untuk setiap kategori

4. **Product Grid**
   - Responsive: 2 kolom (mobile), 3 kolom (tablet), 4 kolom (desktop)
   - Menggunakan `MediaQuery` untuk detect screen width
   - Card dengan image, nama, kategori, dan harga

5. **Navigation**
   - Tap card → Detail page dengan slide animation
   - Info button → About page
   - FAB → Cart page

---

## 📄 DetailPage (StatelessWidget)

### Widget yang Digunakan:
- `CustomScrollView` dengan `SliverAppBar`
- `Hero` widget untuk image transition
- `Container` dengan gradient overlay
- Card components untuk info
- `ElevatedButton` untuk add to cart

### Fitur:
1. **Expandable Header**
   - Full screen image product
   - Gradient overlay dari transparent ke dark
   - Back button dengan background circle putih

2. **Product Information**
   - Category badge dengan gradient
   - Nama produk (large, bold)
   - Price dengan icon dan gradient background
   - Divider untuk separation

3. **Description Section**
   - Icon description
   - Text justified
   - Card dengan shadow

4. **Features List**
   - Icon dengan background colored
   - List keunggulan produk:
     - Kualitas Premium
     - Pengiriman Cepat
     - Garansi Resmi
     - Harga Terjangkau

5. **Bottom Action Button**
   - Fixed di bottom
   - Gradient pink background
   - Icon + text "Tambah ke Keranjang"
   - Shadow untuk depth

6. **Add to Cart Logic**
   - Static list untuk menyimpan cart items
   - Check jika produk sudah ada, increment quantity
   - Jika belum ada, tambahkan ke cart
   - SnackBar notification dengan icon success

---

## 🛒 CartPage (StatefulWidget)

### Kenapa StatefulWidget?
Karena perlu manage state:
- Quantity items (bisa berubah)
- Total price (perlu di-calculate ulang)
- Animation controller
- Remove items dari cart

### Widget yang Digunakan:
- `SingleTickerProviderStateMixin` - Untuk animation controller
- `AnimationController` & `FadeTransition` - Fade in animation
- `Dismissible` - Swipe to delete
- `ListView` dengan `SliverList`

### Fitur:
1. **Animated Header**
   - Pink gradient background
   - Decorative circles
   - Title "Keranjang Belanja"

2. **Empty State**
   - Icon cart besar dengan background circle
   - Text "Keranjang Kosong"
   - Button "Mulai Belanja" → kembali ke home

3. **Cart Items List**
   - Fade in animation saat muncul
   - Swipe to delete (Dismissible)
   - Product image, name, price
   - Quantity controls: - [number] +
   - Subtotal per item

4. **Quantity Management**
   - Plus button: increment
   - Minus button: decrement (min 1)
   - Real-time price update
   - State management dengan `setState()`

5. **Summary Section**
   - Blue gradient card
   - Total items count
   - Total price calculation
   - Divider

6. **Checkout Button**
   - Fixed di bottom
   - Pink gradient
   - Show total price
   - Dialog confirmation saat di-tap

7. **Checkout Dialog**
   - Success icon
   - Thank you message
   - Clear cart saat OK
   - Navigate back ke home

---

## ℹ️ AboutPage (StatelessWidget)

### Widget yang Digunakan:
- `CustomScrollView` & `SliverAppBar`
- Multiple `Container` dengan gradient
- Feature cards layout

### Fitur:
1. **Header dengan Store Icon**
   - Gradient background
   - Store icon large
   - Decorative circles

2. **Brand Section**
   - Circle avatar dengan gradient
   - Shopping bag icon
   - Store name large
   - Tagline italic

3. **Description Card**
   - Info icon
   - About company text
   - Experience information
   - Justified text

4. **Feature Cards (4 items)**
   - Produk Original - Blue gradient
   - Pengiriman Cepat - Mint gradient
   - Harga Terjangkau - Pink gradient
   - Customer Support 24/7 - Blue-mint gradient
   - Each with icon, title, description

5. **Contact Section**
   - Gradient background
   - Email, phone, address
   - Icon untuk setiap contact info

6. **Footer**
   - Copyright text
   - Year

---

## 🎨 Theme Configuration

### File: `theme.dart`

**Colors:**
```dart
primaryColor = #6B9BD1 (Soft Blue)
secondaryColor = #FFA6C1 (Soft Pink)
accentColor = #B5E7D3 (Soft Mint)
backgroundColor = #F8F9FA
```

**Gradients:**
- Primary: Blue to lighter blue
- Header: Blue to mint
- Various combinations untuk variety

**Global Theme:**
- Font: Google Fonts Poppins
- Card: rounded 16px, elevation 2
- Button: rounded 12px, soft colors
- Input: rounded 12px, blue focus border

---

## 📦 Models

### Product Model
```dart
class Product {
  String id;
  String name;
  String description;
  double price;
  String imageUrl;
  String category;
}
```

**Mock Data:**
12 produk berbeda dengan gambar dari Unsplash:
1. Buku Tulis Campus
2. Pensil 2B Staedtler
3. Spidol Whiteboard
4. Penggaris 30cm
5. Penghapus Steadtler
6. Stabilo Boss Highlighter
7. Bolpoin Pilot G2
8. Sticky Notes Warna
9. Correction Tape
10. File Folder Premium
11. Gunting Stainless
12. Lem Stick

### CartItem Model
```dart
class CartItem {
  Product product;
  int quantity;
  double get totalPrice; // calculated
}
```

---

## 🎯 Navigation Flow

```
HomePage
  ├─> DetailPage (slide transition)
  │     └─> Add to Cart (SnackBar)
  │
  ├─> CartPage (FloatingActionButton)
  │     ├─> Manage quantities
  │     ├─> Remove items (swipe)
  │     └─> Checkout (Dialog)
  │           └─> Back to HomePage
  │
  └─> AboutPage (info button)
        └─> Back to HomePage
```

---

## ✨ Animations

1. **Hero Animation**
   - Product image: HomePage → DetailPage
   - Smooth transition
   - Tag: `product_${product.id}`

2. **Slide Transition**
   - DetailPage entrance
   - From right to center
   - Cubic curve easing
   - 300ms duration

3. **Fade Animation**
   - Cart items fade in
   - 500ms duration
   - Ease in curve

4. **Dismissible**
   - Swipe to delete
   - Red background dengan icon delete
   - Feedback dengan SnackBar

---

## 🎨 Design Principles

1. **Consistency**
   - Sama border radius (16px cards, 12px buttons)
   - Consistent spacing
   - Color palette limited

2. **Hierarchy**
   - Large titles
   - Medium subtitles
   - Small descriptions

3. **White Space**
   - Generous padding
   - Clear sections
   - Easy to read

4. **Visual Feedback**
   - SnackBars
   - Dialogs
   - Button states

5. **Accessibility**
   - Good contrast
   - Readable fonts
   - Touch targets 48x48dp

---

## 🚀 Performance

1. **Image Loading**
   - Network images dengan loading state
   - Error handling dengan placeholder
   - Cached by Flutter

2. **Lazy Loading**
   - GridView dengan delegate
   - Only builds visible items

3. **Stateless vs Stateful**
   - Stateless untuk static content
   - Stateful only when needed (Cart)

4. **Code Optimization**
   - Const constructors where possible
   - Reusable widgets
   - Clean separation

---

Semua implementasi sudah mengikuti best practices Flutter dan memenuhi kriteria submission Dicoding! 🎉
