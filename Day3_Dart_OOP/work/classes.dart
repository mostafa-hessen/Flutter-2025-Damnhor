

class BankAccountQnp {
  // constructor
  BankAccountQnp(this.name, this.pass );

  // properties
  String? name;
  int? pass;

  String ?role; 

  String _adminName = "user@admin";
  int _adminPass = 123;
  List _usrs = ["ahmed", "ibrahime", "maram"];

  discount(){
    print("50% product in qnp");
  }


  getUsrs(){
    if(name==_adminName&&pass==_adminPass){
    print("اهلا بيك يا ادمين");
    print(_usrs);
    }else{
      print("ليس لك صلاحيات للوصول");
    }
  }

  

  setUser(){
      _usrs.add(name);
  }




}


// setter getter _ mixin - interface -enums