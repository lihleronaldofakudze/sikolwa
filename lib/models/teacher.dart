class Teacher {
  final String id;
  final String image;
  final String name;
  final String surname;
  final String email;
  final String gender;
  final String address;
  final int number;
  final DateTime dob;
  final String transportation;

  Teacher(
      {required this.id,
      required this.image,
      required this.name,
      required this.surname,
      required this.email,
      required this.gender,
      required this.address,
      required this.number,
      required this.dob,
      required this.transportation});
}
