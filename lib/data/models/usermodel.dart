import 'package:json_annotation/json_annotation.dart';
part 'usermodel.g.dart';
@JsonSerializable()
class Usermodel {
  final int id;
  final String name;
  final String email;
  final String password;
  final String phone;
  final DateTime updated_at;
  final DateTime created_at;

  Usermodel(this.id, this.name, this.email, this.password, this.phone, this.updated_at, this.created_at);
  factory Usermodel.fromJson(Map<String, dynamic> json) =>
      _$UsermodelFromJson(json);
  
}
