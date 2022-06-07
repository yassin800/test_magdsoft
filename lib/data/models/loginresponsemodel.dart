import 'package:json_annotation/json_annotation.dart';
import 'package:magdsoft_flutter_structure/data/models/usermodel.dart';
part 'loginresponsemodel.g.dart';

@JsonSerializable()
class Loginresponsemodel {
  final int status;
  final List<Usermodel>? account;
  final String? message;
  Loginresponsemodel(this.account, this.status, this.message);
  factory Loginresponsemodel.fromJson(Map<String, dynamic> json) =>
      _$LoginresponsemodelFromJson(json);
}
