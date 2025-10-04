class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String category;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
  });
}

// Mock Data Produk
final List<Product> products = [
  Product(
    id: '1',
    name: 'Buku Tulis Campus',
    description:
        'Buku tulis berkualitas tinggi dengan 80 halaman. Cocok untuk catatan sehari-hari, kuliah, atau kerja. Kertas halus dan tidak mudah sobek.',
    price: 5000,
    imageUrl: 'https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=400',
    category: 'Buku',
  ),
  Product(
    id: '2',
    name: 'Pensil 2B Staedtler',
    description:
        'Pensil premium dengan kualitas terbaik. Grafitnya halus dan tidak mudah patah. Cocok untuk menulis dan menggambar.',
    price: 3000,
    imageUrl:
        'https://images.unsplash.com/photo-1587916606912-faa74eac6f89?w=400',
    category: 'Pensil',
  ),
  Product(
    id: '3',
    name: 'Spidol Whiteboard',
    description:
        'Spidol untuk papan tulis dengan tinta yang mudah dihapus. Tersedia dalam berbagai warna cerah. Tidak meninggalkan noda.',
    price: 8000,
    imageUrl:
        'https://images.unsplash.com/photo-1586281010691-93f8dd6a3d54?w=400',
    category: 'Spidol',
  ),
  Product(
    id: '4',
    name: 'Penggaris 30cm',
    description:
        'Penggaris plastik transparan 30cm dengan skala yang jelas. Tahan lama dan tidak mudah patah. Cocok untuk kebutuhan sekolah dan kantor.',
    price: 2000,
    imageUrl:
        'https://images.unsplash.com/photo-1513128034602-7814ccaddd4e?w=400',
    category: 'Alat Ukur',
  ),
  Product(
    id: '5',
    name: 'Penghapus Steadtler',
    description:
        'Penghapus berkualitas tinggi yang tidak meninggalkan noda pada kertas. Dapat menghapus pensil dengan bersih tanpa merusak kertas.',
    price: 2500,
    imageUrl:
        'https://images.unsplash.com/photo-1606326608606-aa0b62935f2b?w=400',
    category: 'Penghapus',
  ),
  Product(
    id: '6',
    name: 'Stabilo Boss Highlighter',
    description:
        'Stabilo warna-warni untuk menandai teks penting. Tinta anti pudar dan tidak tembus ke halaman berikutnya. Set 4 warna pastel.',
    price: 12000,
    imageUrl:
        'https://images.unsplash.com/photo-1605116959136-b9870ab1c5d0?w=400',
    category: 'Stabilo',
  ),
  Product(
    id: '7',
    name: 'Bolpoin Pilot G2',
    description:
        'Bolpoin gel dengan tinta yang halus dan tidak mudah luntur. Grip ergonomis untuk kenyamanan menulis dalam waktu lama.',
    price: 4500,
    imageUrl:
        'https://images.unsplash.com/photo-1585366119957-e9730b6d0f60?w=400',
    category: 'Bolpoin',
  ),
  Product(
    id: '8',
    name: 'Sticky Notes Warna',
    description:
        'Sticky notes dengan berbagai warna cerah. Lem yang kuat namun mudah dilepas tanpa meninggalkan bekas. Isi 100 lembar per warna.',
    price: 6000,
    imageUrl:
        'https://images.unsplash.com/photo-1587825140708-dfaf72ae4b04?w=400',
    category: 'Sticky Notes',
  ),
  Product(
    id: '9',
    name: 'Correction Tape',
    description:
        'Correction tape untuk mengoreksi tulisan dengan rapi. Aplikasi yang halus dan hasil yang instan. Tidak perlu menunggu kering.',
    price: 7000,
    imageUrl:
        'https://images.unsplash.com/photo-1611532736579-6b16e2b50449?w=400',
    category: 'Koreksi',
  ),
  Product(
    id: '10',
    name: 'File Folder Premium',
    description:
        'File folder untuk menyimpan dokumen penting. Bahan plastik tebal dan tahan lama. Tersedia dalam warna pastel yang menarik.',
    price: 10000,
    imageUrl:
        'https://images.unsplash.com/photo-1568667256549-094345857637?w=400',
    category: 'File',
  ),
  Product(
    id: '11',
    name: 'Gunting Stainless',
    description:
        'Gunting dengan pisau stainless steel yang tajam dan tahan karat. Nyaman digunakan dengan grip yang ergonomis.',
    price: 15000,
    imageUrl:
        'https://images.unsplash.com/photo-1565688534245-05d6b5be184a?w=400',
    category: 'Gunting',
  ),
  Product(
    id: '12',
    name: 'Lem Stick',
    description:
        'Lem stick yang mudah digunakan dan tidak berantakan. Cocok untuk menempelkan kertas, foto, dan kerajinan tangan. Tidak berbau.',
    price: 5500,
    imageUrl:
        'https://images.unsplash.com/photo-1589939705384-5185137a7f0f?w=400',
    category: 'Lem',
  ),
];
