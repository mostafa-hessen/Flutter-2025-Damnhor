import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<dynamic> products = [];
  bool isLoading = true;

  fetchDataFromApi() async {
    final responce = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );
    print(responce.body);

    if (responce.statusCode == 200) {
      setState(() {
        products = jsonDecode(responce.body);
      });

      isLoading = false;
    }
  }

  @override
  void initState() {
    super.initState();
 
    fetchDataFromApi();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('المنتجات'), centerTitle: true),
      body:
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // عمودين
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.65, // لضبط الارتفاع والعرض
                  ),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 7,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(15),
                              ),
                              child: Image.network(
                                product['image'],
                                fit: BoxFit.contain,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    product['title'],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "${product['price']} \$",
                                    style: const TextStyle(
                                      color: Colors.teal,
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
                    );
                  },
                ),
              ),
    );
  }
}
  // Future<void> fetchProducts() async {
  //   final response = await http.get(
  //     Uri.parse('https://fakestoreapi.com/products'),
  //   );
  //   if (response.statusCode == 200) {
  //     setState(() {
  //       products = json.decode(response.body);
  //       isLoading = false;
  //     });
  //   } else {
  //     throw Exception('فشل تحميل المنتجات');
  //   }

  // }





  
 













