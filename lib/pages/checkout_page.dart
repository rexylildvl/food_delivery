import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_routes.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String _selectedPayment = '';
  final List<Map<String, dynamic>> _paymentMethods = [
    {
      'name': 'Transfer Bank BCA',
      'code': 'bca',
      'icon': '🏦'
    },
    {
      'name': 'Transfer Bank BRI',
      'code': 'bri',
      'icon': '🏦'
    },
    {
      'name': 'Gopay',
      'code': 'gopay',
      'icon': '📱'
    },
    {
      'name': 'OVO',
      'code': 'ovo',
      'icon': '📱'
    },
    {
      'name': 'Dana',
      'code': 'dana',
      'icon': '📱'
    },
    {
      'name': 'ShopeePay',
      'code': 'shopeepay',
      'icon': '📱'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Checkout'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                        'Item Dipesan',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    ),
                    const SizedBox(height: 10),
                    const ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text('🍛'),
                      ),
                      title: Text('Nasi Goreng Spesial'),
                      subtitle: Text('1 x Rp 25.000'),
                      trailing: Text('Rp 25.000'),
                    ),
                    const Divider(),

                    const Text(
                        'Alamat Pengiriman',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(Icons.location_on, size: 16, color: Colors.grey),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text('Jl. Soedirman No. 10, Purwokerto, Jawa Tengah'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    const Text(
                        'Opsi Pembayaran',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    ),
                    const SizedBox(height: 10),

                    Column(
                      children: _paymentMethods.map((payment) {
                        return Card(
                          margin: const EdgeInsets.only(bottom: 8),
                          child: RadioListTile<String>(
                            value: payment['code'],
                            groupValue: _selectedPayment,
                            onChanged: (value) {
                              setState(() {
                                _selectedPayment = value!;
                              });
                            },
                            title: Row(
                              children: [
                                Text(payment['icon']),
                                const SizedBox(width: 12),
                                Text(payment['name']),
                              ],
                            ),
                            secondary: const Icon(Icons.arrow_forward_ios, size: 16),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),

            Card(
              color: Colors.grey[50],
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                            'Total Pembayaran',
                            style: TextStyle(fontSize: 14, color: Colors.grey)
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Rp 25.000',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.green[700]
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: _selectedPayment.isEmpty
                          ? null
                          : () {
                        Get.offNamed(Routes.ORDER_HISTORY);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        disabledBackgroundColor: Colors.grey,
                      ),
                      child: const Text('Pesan Sekarang'),
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
}