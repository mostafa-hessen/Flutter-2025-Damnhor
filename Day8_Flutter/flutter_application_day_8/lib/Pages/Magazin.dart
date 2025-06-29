import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostsPage extends StatefulWidget {
  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  List posts = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchPost();
  }

  Future fetchPost() async {
    setState(() {
      isLoading = true;
    });
    final responce = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );

    if (responce.statusCode == 200) {
      setState(() {
        posts = jsonDecode(responce.body);
        isLoading = false;
      });
    }
  }
  // ... سندرج الدوال الأخرى هنا

  Future createPost(String title, String body) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'title': title, 'body': body, 'userId': 1}),
    );

    if (response.statusCode == 201) {
      setState(() {
        posts.insert(0, json.decode(response.body));
      });
      debugPrint('تمت إضافة مشاركة جديدة');
    } else {
      // showError('فشل في إضافة المشاركة');
    }
  }

  void showAddPostDialog() {
    final titleController = TextEditingController();
    final bodyController = TextEditingController();

    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text('إضافة بوست جديد'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: 'العنوان'),
                ),
                TextField(
                  controller: bodyController,
                  decoration: InputDecoration(labelText: 'النص'),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('إلغاء'),
              ),
              ElevatedButton(
                onPressed: () {
                  if (titleController.text.isNotEmpty &&
                      bodyController.text.isNotEmpty) {
                    createPost(titleController.text, bodyController.text);
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.green,
                        content: Text('تم اضافه بوست !'),
                        duration: Duration(seconds: 10),
                      ),
                    );
                  } else {
                    // showError('يرجى ملء جميع الحقول');
                  }
                },
                child: Text('إضافة'),
              ),
            ],
          ),
    );
  }

  @override

  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("المشاركات"),
        actions: [
          IconButton(
            onPressed: () {
              showAddPostDialog();
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body:
          isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                padding: EdgeInsets.all(20),
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final post = posts[index];
                  return Card(
                    child: ListTile(
                      title: Text(post['title']),
                      subtitle: Text(post['body']),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            tooltip: "نعديل البوست",
                            onPressed: () => {},
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () => {},
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
    );
  }
}
