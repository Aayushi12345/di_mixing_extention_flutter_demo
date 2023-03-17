class Employee {
  String id = "1";
  String name = "Aayush";

  Employee._privateConstructor();

  static final Employee _employee = Employee._privateConstructor();

  factory Employee() {
    return _employee;
  }
}
