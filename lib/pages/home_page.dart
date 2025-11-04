import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_routes.dart';
import '../models/restaurant_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ['Fast Food', 'Minuman', 'Dessert', 'Tradisional', 'Ayam', 'Nasi'];
    final restaurants = [
      Restaurant(
        id: '1',
        name: 'Warung Biru',
        rating: 4.5,
        category: 'Tradisional',
        distance: '0.8 km',
        image: 'assets/images/warung_biru.jpeg',
        description: 'Warung makan tradisional dengan cita rasa autentik. Menyajikan berbagai masakan rumahan yang lezat dan terjangkau.',
        openHours: 'Buka • Tutup pukul 22:00',
      ),
      Restaurant(
        id: '2',
        name: 'Warung Kuning',
        rating: 4.7,
        category: 'Tradisional',
        distance: '1.2 km',
        image: 'assets/images/warung_kuning.jpeg',
        description: 'Specialis masakan Padang dengan rasa yang otentik dan pedas menggugah selera.',
        openHours: 'Buka • Tutup pukul 21:30',
      ),
      Restaurant(
        id: '3',
        name: 'Warung Oren',
        rating: 4.6,
        category: 'Fast Food',
        distance: '0.5 km',
        image: 'assets/images/warung_oren.jpeg',
        description: 'Tempat terbaik untuk burger dan kentang goreng dengan rasa yang nikmat.',
        openHours: 'Buka 24 Jam',
      ),
      Restaurant(
        id: '4',
        name: 'Warung Bu Siti',
        rating: 4.8,
        category: 'Tradisional',
        distance: '1.5 km',
        image: 'assets/images/warung_bu_siti.jpeg',
        description: 'Masakan rumahan ala Bu Siti dengan resep turun temurun yang istimewa.',
        openHours: 'Buka • Tutup pukul 20:00',
      ),
      Restaurant(
        id: '5',
        name: 'Warung Babeh',
        rating: 4.4,
        category: 'Tradisional',
        distance: '2.0 km',
        image: 'assets/images/warung_babeh.jpeg',
        description: 'Warung legendaris dengan soto betawi dan nasi uduk yang terkenal.',
        openHours: 'Buka • Tutup pukul 19:00',
      ),
      Restaurant(
        id: '6',
        name: 'Geprek Redjo',
        rating: 4.9,
        category: 'Ayam',
        distance: '0.3 km',
        image: 'assets/images/geprek_redjo.jpeg',
        description: 'Ayam geprek dengan sambal super pedas dan berbagai level kepedasan.',
        openHours: 'Buka • Tutup pukul 23:00',
      ),
      Restaurant(
        id: '7',
        name: 'Warung Makan Hany',
        rating: 4.3,
        category: 'Nasi',
        distance: '1.8 km',
        image: 'assets/images/warung_hany.jpeg',
        description: 'Tempat makan dengan berbagai pilihan nasi campur dan lauk pauk lengkap.',
        openHours: 'Buka • Tutup pukul 21:00',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text('Foodify'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Halo, Selamat Datang!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Mau makan apa hari ini?",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                hintText: 'Cari makanan atau restoran...',
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
            ),
            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Kategori",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Lihat Semua",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                    color: index == 0 ? Colors.green : Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: index == 0 ? Colors.green : Colors.grey.shade300,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      color: index == 0 ? Colors.white : Colors.grey[700],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Restoran Terdekat",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Lihat Semua",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: restaurants.length,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final restaurant = restaurants[index]; // Ganti nama variabel dari 'resto' ke 'restaurant'

                  return Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.restaurant,
                          color: Colors.green,
                          size: 30,
                        ),
                      ),
                      title: Text(
                        restaurant.name, // Akses properti langsung dari object Restaurant
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
                            restaurant.category, // Akses properti langsung
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                restaurant.rating.toString(), // Akses properti langsung
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.location_on_outlined,
                                color: Colors.green,
                                size: 14,
                              ),
                              const SizedBox(width: 2),
                              Text(
                                restaurant.distance, // Akses properti langsung
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.green,
                          size: 16,
                        ),
                      ),
                      onTap: () => Get.toNamed(
                        Routes.RESTAURANT_DETAIL,
                        arguments: restaurant, // Kirim data restoran sebagai arguments
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}