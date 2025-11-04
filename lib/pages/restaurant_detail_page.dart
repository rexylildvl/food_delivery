import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_routes.dart';

class RestaurantDetailPage extends StatelessWidget {
  const RestaurantDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      {'name': 'Nasi Goreng Spesial', 'price': 25000, 'description': 'Nasi goreng dengan telur, ayam, dan sayuran segar', 'category': 'Makanan Utama'},
      {'name': 'Ayam Geprek', 'price': 20000, 'description': 'Ayam crispy dengan sambal bawang yang pedas', 'category': 'Makanan Utama'},
      {'name': 'Mie Ayam', 'price': 18000, 'description': 'Mie dengan topping ayam dan pangsit goreng', 'category': 'Makanan Utama'},
      {'name': 'Es Teh Manis', 'price': 5000, 'description': 'Es teh segar dengan gula pasir', 'category': 'Minuman'},
      {'name': 'Jus Alpukat', 'price': 12000, 'description': 'Jus alpukat segar dengan susu dan gula aren', 'category': 'Minuman'},
      {'name': 'Pisang Goreng', 'price': 8000, 'description': 'Pisang goreng crispy dengan madu', 'category': 'Dessert'},
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 220,
              child: Stack(
                children: [
                  // Restaurant Image
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/restaurant.jpeg',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.green,
                        child: const Icon(Icons.restaurant, color: Colors.white, size: 80),
                      ),
                    ),
                  ),
                  // Back Button
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
                        onPressed: () => Get.back(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Warung Biru',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'Tradisional • 0.8 km',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            SizedBox(width: 4),
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Warung makan tradisional dengan cita rasa autentik. Menyajikan berbagai masakan rumahan yang lezat dan terjangkau.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      Icon(Icons.access_time, color: Colors.green, size: 16),
                      SizedBox(width: 6),
                      Text(
                        'Buka • Tutup pukul 22:00',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.grey[50],
                child: Column(
                  children: [
                    // Menu Header
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text(
                        'Menu',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: menuItems.length,
                        itemBuilder: (context, index) {
                          final item = menuItems[index];
                          final category = item['category'] as String;
                          final isNewCategory = index == 0 || menuItems[index - 1]['category'] != category;

                          return Column(
                            children: [
                              if (isNewCategory)
                                Container(
                                  width: double.infinity,
                                  color: Colors.grey[100],
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  child: Text(
                                    category,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              Container(
                                color: Colors.white,
                                child: ListTile(
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  leading: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.green.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      _getCategoryIcon(category),
                                      color: Colors.green,
                                      size: 24,
                                    ),
                                  ),
                                  title: Text(
                                    item['name'] as String,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 4),
                                      Text(
                                        item['description'] as String,
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 13,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        'Rp ${item['price']}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  onTap: () {
                                  },
                                ),
                              ),
                              if (index < menuItems.length - 1)
                                const Divider(height: 1, indent: 16),
                            ],
                          );
                        },
                      ),
                    ),

                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(16),
                      child: ElevatedButton(
                        onPressed: () => Get.toNamed(Routes.CHECKOUT),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 2,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shopping_cart_checkout, size: 20),
                            SizedBox(width: 8),
                            Text(
                              "Pesan Sekarang",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case 'Makanan Utama':
        return Icons.restaurant;
      case 'Minuman':
        return Icons.local_drink;
      case 'Dessert':
        return Icons.icecream;
      default:
        return Icons.fastfood;
    }
  }
}