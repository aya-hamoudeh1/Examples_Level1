class Person {
  final String _name;
  int _age;

  Person(this._name,this._age);

  String get name => _name;

  int get age => _age;

  set setAge (int val){
    if(val > 0){
      _age = val;
    } else {
      print("the age can not be negative ");
    }
  }

  void printInfo(){
    print("Name : $_name , Age: $_age");
  }
}