import 'package:futurehome_test1/model/list_entity.dart';

class PersonModel extends ListEntity {
  final String name;
  final String phoneNumber;
  final int priority;
  final String mail;
  final int updated;

  PersonModel(
      {required this.name,
      required this.phoneNumber,
      required this.priority,
      required this.mail,
      required this.updated});
}
