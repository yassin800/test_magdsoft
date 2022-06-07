import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/builder.dart';
part 'register_response.g.dart';

@JsonSerializable()
class RegisterRsponseModel {
  final int status;
  final String message;

  RegisterRsponseModel(this.status, this.message);
  factory RegisterRsponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRsponseModelFromJson(json);
}
