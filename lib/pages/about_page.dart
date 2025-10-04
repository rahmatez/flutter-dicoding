import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar with Gradient
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Tentang Kami',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF6B9BD1),
                      Color(0xFFB5E7D3),
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: -50,
                      top: -50,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 40),
                        child: Icon(
                          Icons.store,
                          size: 80,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            leading: IconButton(
              icon: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_back, color: Color(0xFF2D3436)),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),

          // Content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Logo / Brand Section
                  Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: const LinearGradient(
                        colors: [Color(0xFF6B9BD1), Color(0xFF8BB5E3)],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF6B9BD1).withOpacity(0.3),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.shopping_bag,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Store Name
                  const Text(
                    'Renada Stationary',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3436),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Your Trusted Stationery Store',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF636E72),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Description Card
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 15,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: Color(0xFF6B9BD1),
                              size: 28,
                            ),
                            SizedBox(width: 12),
                            Text(
                              'Tentang Renada Stationary',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2D3436),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Renada Stationary adalah toko alat tulis terpercaya yang menyediakan berbagai produk berkualitas tinggi untuk kebutuhan sekolah, kuliah, dan kantor. Kami berkomitmen untuk memberikan produk terbaik dengan harga yang terjangkau.',
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.6,
                            color: Color(0xFF636E72),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Dengan pengalaman lebih dari 10 tahun, kami telah melayani ribuan pelanggan yang puas. Kepercayaan Anda adalah prioritas kami.',
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.6,
                            color: Color(0xFF636E72),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Features Grid
                  _buildFeatureCard(
                    icon: Icons.verified_user,
                    title: 'Produk Original',
                    description:
                        'Semua produk dijamin 100% original dan berkualitas tinggi.',
                    gradient: const LinearGradient(
                      colors: [Color(0xFF6B9BD1), Color(0xFF8BB5E3)],
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildFeatureCard(
                    icon: Icons.local_shipping,
                    title: 'Pengiriman Cepat',
                    description:
                        'Kami menjamin pengiriman cepat dan aman ke seluruh Indonesia.',
                    gradient: const LinearGradient(
                      colors: [Color(0xFFB5E7D3), Color(0xFF8BB5E3)],
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildFeatureCard(
                    icon: Icons.price_check,
                    title: 'Harga Terjangkau',
                    description:
                        'Harga yang kompetitif dengan kualitas terbaik di kelasnya.',
                    gradient: const LinearGradient(
                      colors: [Color(0xFFFFA6C1), Color(0xFFFFB8CC)],
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildFeatureCard(
                    icon: Icons.support_agent,
                    title: 'Customer Support 24/7',
                    description:
                        'Tim support kami siap membantu Anda kapan saja.',
                    gradient: const LinearGradient(
                      colors: [Color(0xFF6B9BD1), Color(0xFFB5E7D3)],
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Contact Section
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF6B9BD1),
                          Color(0xFF8BB5E3),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF6B9BD1).withOpacity(0.3),
                          blurRadius: 15,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Hubungi Kami',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildContactItem(
                          Icons.email,
                          'rahmatezdev@gmail.com',
                        ),
                        const SizedBox(height: 12),
                        _buildContactItem(
                          Icons.phone,
                          '+62 812-9383-4186',
                        ),
                        const SizedBox(height: 12),
                        _buildContactItem(
                          Icons.location_on,
                          'Jl. Pendidikan No. 123, Tegal, Jawa Tengah',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Footer
                  const Text(
                    '© 2025 Renada Stationary',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF636E72),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'All rights reserved',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF636E72),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required String description,
    required LinearGradient gradient,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 32,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D3436),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF636E72),
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.white, size: 20),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
