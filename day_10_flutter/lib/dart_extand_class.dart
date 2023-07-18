class Esukhei {
  Esukhei({required int age}){
    this.age =age;
  }
  String name = 'Esukhei';
  int age = 0;
  void sayMyName(){
    print('Myname is ${this.name}');
  }
}
class Temuujin extends Esukhei {
  Temuujin({required super.age});

  @override
  void sayMyName() {
    print('My name is Temuujin');
  }
}
class Hasar extends Esukhei {
  Hasar({required super.age});

  @override
  void sayMyName(){
    print('My name is Hasar');
  }
}
class Temuuge extends Esukhei{
  Temuuge({required super.age});

  @override
  void sayMyName(){
    print('My name is Temuuge');
  }
}
class Khashuu extends Esukhei {
  Khashuu({required super.age});

  @override
  void sayMyName(){
    print('My name is Khashuu');
  }
}
void main(){
  final Esukhei esukheiBaatar = Esukhei(age: 25);
  esukheiBaatar.sayMyName();
final Temuujin temuujin = Temuujin(age: 18);
temuujin.sayMyName();
final Hasar hasar = Hasar(age: 40);
hasar.sayMyName();
final Temuuge temuuge = Temuuge(age: 30);
temuuge.sayMyName();
final Khashuu khashuu = Khashuu(age: 20);
khashuu.sayMyName();
}
