class Employee {
  int id;
  String name;
  String email;
  String phone;

  Employee(this.id, this.name,this.email,this.phone);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'name': name,
      'email':email,
      'phone':phone
    };
    return map;
  }

  Employee.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    email = map['email'];
    phone = map['phone'];
  }
}
