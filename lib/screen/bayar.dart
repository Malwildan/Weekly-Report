import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas1/models/products.dart';

class Bayar extends StatefulWidget {
  const Bayar({super.key, required this.product, required this.quantity});

  final Product product;
  final int quantity;

  @override
  State<Bayar> createState() => _BayarState();
}

class _BayarState extends State<Bayar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Bayar', style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 37, 71, 95),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Alamat Pengiriman', style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 16),),
            SizedBox(height: 12),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 238, 246, 252),
                //border: Border.all(color: Colors.black,),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Supernova by Aespa', style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 16),),
                        Text('081234567890', style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 16),),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text('GKM Lt. 2 FILKOM, Jl. Veteran No. 8, Malang, 65145, Indonesia', style: GoogleFonts.inter(color: Colors.grey),),
                  ],
                ),
              ),
            ),
            
            SizedBox(height: 34),

            Text('Barang Belanja', style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 16),),
            
            SizedBox(height: 15),

            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage('assets/logo.png'),
                    ),
                ),
                SizedBox(width: 12),
                Text('BASIC VEGETABLES', style: GoogleFonts.heebo(fontWeight: FontWeight.w400, fontSize: 16),),
              ],
            ),

            SizedBox(height: 15),

            Container(
              height: 112,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: SizedBox(
                        child: Image.network(
                          widget.product.imageKey,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: const Color.fromARGB(255, 238, 246, 252),
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.broken_image_outlined,
                                color: Colors.grey,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.product.name,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            widget.product.price.toString(),
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.orange,
                            ),
                          ),
                          Spacer(),
                          Text('${widget.quantity}x', style: GoogleFonts.inter(color: Colors.black),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 34,),

            Text('Metode Pengiriman', style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 16),),
          ],
        ),
      ),
    );
  }
}