import 'dart:convert';
// https://jsonplaceholder.typicode.com/guide/
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// الصفحة widget لوحدها بحيث يمكن استدعاؤها من main.dart
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
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    setState(() => isLoading = true);
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      setState(() {
        posts = json.decode(response.body);
        isLoading = false;
      });
      debugPrint('تم تحميل المشاركات: ${posts.length}'); // تصحيح حالة المشاركات
    } else {
      setState(() => isLoading = false);
      showError('فشل في جلب البيانات');
    }
  }

  Future<void> createPost(String title, String body) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'title': title,
        'body': body,
        'userId': 1,
      }),
    );

    if (response.statusCode == 201) {
      setState(() {
        posts.insert(0, json.decode(response.body));
      });
      debugPrint('تمت إضافة بوست جديد. العدد الآن: ${posts.length}');
    } else {
      showError('فشل في إضافة البوست');
    }
  }

  Future<void> updatePost(int id, String newTitle, String newBody) async {
    final response = await http.put(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'id': id,
        'title': newTitle,
        'body': newBody,
        'userId': 1,
      }),
    );

    if (response.statusCode == 200) {
      setState(() {
        int index = posts.indexWhere((post) => post['id'] == id);
        if (index != -1) posts[index] = json.decode(response.body);
      });
    } else {
      showError('فشل في تعديل البوست');
    }
  }

  Future<void> deletePost(int id) async {
    // إضافة تأكيد الحذف للمستخدم
    bool confirm = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('تأكيد الحذف'),
        content: Text('هل أنت متأكد أنك تريد حذف هذا البوست؟'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: Text('إلغاء')),
          ElevatedButton(onPressed: () => Navigator.pop(context, true), child: Text('حذف')),
        ],
      ),
    );

    if (confirm != true) return;

    final response = await http.delete(Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'));

    if (response.statusCode == 200) {
      setState(() => posts.removeWhere((post) => post['id'] == id));
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('تم حذف البوست بنجاح')),
      );
    } else {
      showError('فشل في حذف البوست');
    }
  }

  void showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  // حوار إضافة بوست جديد مع مدخلات
  void showAddPostDialog() {
    final titleController = TextEditingController();
    final bodyController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
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
              if (titleController.text.isNotEmpty && bodyController.text.isNotEmpty) {
                createPost(titleController.text, bodyController.text);
                Navigator.of(context).pop();
              } else {
                showError('يرجى ملء جميع الحقول');
              }
            },
            child: Text('إضافة'),
          ),
        ],
      ),
    );
  }

  // حوار تعديل البوست
  void showEditDialog(int id, String currentTitle, String currentBody) {
    final titleController = TextEditingController(text: currentTitle);
    final bodyController = TextEditingController(text: currentBody);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('تعديل البوست'),
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
              if (titleController.text.isNotEmpty && bodyController.text.isNotEmpty) {
                updatePost(id, titleController.text, bodyController.text);
                Navigator.of(context).pop();
              } else {
                showError('يرجى ملء جميع الحقول');
              }
            },
            child: Text('حفظ'),
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
            icon: Icon(Icons.refresh),
            onPressed: fetchPosts,
            tooltip: 'تحديث البيانات',
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: showAddPostDialog,
            tooltip: 'إضافة بوست جديد',
          ),
        ],
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    title: Text(post['title']),
                    subtitle: Text(post['body']),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit, color: Colors.orange),
                          onPressed: () => showEditDialog(post['id'], post['title'], post['body']),
                          tooltip: 'تعديل',
                        ),
                        IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () => deletePost(post['id']),
                          tooltip: 'حذف',
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
