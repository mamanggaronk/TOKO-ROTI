import 'package:flutter/material.dart';

class AdminProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
        backgroundColor: Colors.brown[800],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfileHeader(),
            SizedBox(height: 20),
            _buildSectionTitle('Data Penjualan Terakhir'),
            SizedBox(height: 10),
            _buildSalesInfo(),
            SizedBox(height: 20),
            _buildSectionTitle('Pembelian Terakhir'),
            SizedBox(height: 10),
            _buildPurchaseInfo(),
          ],
        ),
      ),
    );
  }

  // Header profil admin
  Widget _buildProfileHeader() {
    return Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage('https://example.com/admin-profile-pic.jpg'), // Ganti dengan URL gambar profil admin
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Admin',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              'admin@example.com',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ],
        ),
      ],
    );
  }

  // Bagian judul untuk setiap bagian data
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown[800]),
    );
  }

  // Informasi data penjualan terakhir
  Widget _buildSalesInfo() {
    final sales = {
      'total_sales': 'Rp 1,200,000',
      'last_item_sold': 'Roti Tawar',
      'last_sale_date': '2024-08-09',
    };

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total Penjualan: ${sales['total_sales']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Barang Terakhir Terjual: ${sales['last_item_sold']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Tanggal Penjualan Terakhir: ${sales['last_sale_date']}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }

  // Informasi data pembelian terakhir
  Widget _buildPurchaseInfo() {
    final purchases = {
      'last_purchase_item': 'Roti Manis',
      'last_purchase_quantity': 5,
      'last_purchase_date': '2024-08-08',
    };

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Barang Terakhir Dibeli: ${purchases['last_purchase_item']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Jumlah Terakhir Dibeli: ${purchases['last_purchase_quantity']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Tanggal Pembelian Terakhir: ${purchases['last_purchase_date']}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
