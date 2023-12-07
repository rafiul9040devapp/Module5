import 'package:module5/assignment/role.dart';

class Person implements Role {
  @override
  String? roleOfPerson;
  String? _name;
  int? _age;
  String? _address;

  Person(this.roleOfPerson, this._age, this._name, this._address);

  String get name => _name?.toUpperCase() ?? "No Name is provided" ;

  int get age => _age ?? 0;

  String get address => _address?.toUpperCase() ?? "No Address is provided";

  String get role => roleOfPerson?.toUpperCase() ?? "No Role is provided";

  @override
  void displayRole() {
    print("Role:  $roleOfPerson");
  }
  void displayPersonalDetails() {
    print("Name: $name");

    if(age == 0){
      print("Age: No Age is provided");
    }else{
      print("Age: $age ");
    }

    print("Address: $address");
  }
}
