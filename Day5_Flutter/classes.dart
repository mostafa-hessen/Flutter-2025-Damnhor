class Test {
  static int memo =0;

  Test({required String this.name, required this.shcool}) {
    Test.memo++;

  }

  String name = 'unknown';
  String shcool = 'unknown';
  String q1 = "enter mohamed ali born ";
  String q2 = "enter 2000/4 ";

  String _q1Answer = "1939";
  String _q2Answer = "200";


  void testQuestion(q1Student, q2Student) {

    if (q1Student == this._q1Answer) {
      print("bravo ");
    } else {
      print("failed");
    }
  }
}

class Wallet {
  String owner; // خاص - برا الكلاس مش شايفه
  double _balance = 100; // خاص - محدش يقدر يعدله مباشرة

  Wallet(this.owner);

  double get balance => this._balance;

  set balance(ammount){
    if(ammount>0){
      this._balance+=ammount;
    }
  }
 


}
