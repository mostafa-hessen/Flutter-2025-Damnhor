Future<String> loadFromCache() async {
  await Future.delayed(Duration(seconds: 10));
  return 'بيانات من الكاش';
}

Future<String> loadFromApi() async {
  await Future.delayed(Duration(seconds: 3));
  return 'بيانات من السيرفر';
}

Future<String> loadFromBackup() async {
  await Future.delayed(Duration(seconds: 2));
  return 'بيانات من السيرفر الاحتياطي';
}




void main()  {
    print('جاري تحميل البيانات...');
    loadFromApi().then((number)=>{

      print(number)

    }).catchError((err)=>{
      print(err)
    });
    print("he");
        
   
}
