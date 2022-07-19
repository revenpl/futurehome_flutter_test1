import 'package:ui_components/model/list_entity.dart';

class PersonModel extends ListEntity {
  final String? name;
  final String? phoneNumber;
  final int? priority;
  final String? mail;
  final int? updated;

  PersonModel({this.name, this.phoneNumber, this.priority, this.mail, this.updated});
}
