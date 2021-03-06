import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_app_public/features/report/data/models/report_category_model.dart';
import 'package:frontend_app_public/features/report/data/models/report_image_model.dart';
import 'package:frontend_app_public/features/report/data/models/report_user_model.dart';

part 'report_data_model.freezed.dart';
part 'report_data_model.g.dart';

@freezed
class ReportDataModel with _$ReportDataModel {
  const factory ReportDataModel({
    required int id,
    required String serial,
    required ReportUserModel user,
    required ReportCategoryModel category,
    required String detail,
    required String address,
    required String city,
    required String subdistrict,
    required double latitude,
    required double longitude,
    required bool private,
    required List<ReportImageModel> images,
    required String createdAt,
    required String updatedAt,
  }) = _ReportDataModel;

  factory ReportDataModel.fromJson(Map<String, dynamic> json) =>
      _$ReportDataModelFromJson(json);
}

// class ReportDataModel extends ReportDataEntity {
//   final int id;
//   final String serial;
//   final ReportUserModel reportUserModel;
//   final ReportCategoryModel reportCategoryModel;
//   final String detail;
//   final String address;
//   final String city;
//   final String subdistrict;
//   final double latitude;
//   final double longitude;
//   final bool private;
//   final List<ReportImageModel> reportImageModels;
//   final String createdAt;
//   final String updatedAt;

//   ReportDataModel({
//     required this.id,
//     required this.serial,
//     required this.reportUserModel,
//     required this.reportCategoryModel,
//     required this.detail,
//     required this.address,
//     required this.city,
//     required this.subdistrict,
//     required this.latitude,
//     required this.longitude,
//     required this.private,
//     required this.reportImageModels,
//     required this.createdAt,
//     required this.updatedAt,
//   }) : super(
//           id: id,
//           serial: serial,
//           reportUserEntity: reportUserModel,
//           reportCategoryEntity: reportCategoryModel,
//           detail: detail,
//           address: address,
//           city: city,
//           subdistrict: subdistrict,
//           latitude: latitude,
//           longitude: longitude,
//           private: private,
//           reportImageEntities: reportImageModels,
//           createdAt: createdAt,
//           updatedAt: updatedAt,
//         );

//   factory ReportDataModel.fromJson(Map<String, dynamic> json) {
//     return ReportDataModel(
//       id: json['id'] as int,
//       serial: json['serial'],
//       reportUserModel: json['user'],
//       reportCategoryModel: json['category'],
//       detail: json['detail'],
//       address: json['address'],
//       city: json['city'],
//       subdistrict: json['subdistrict'],
//       latitude: json['latitude'] as double,
//       longitude: json['longitude'] as double,
//       private: json['private'] as bool,
//       reportImageModels: json['images'],
//       createdAt: json['created_at'],
//       updatedAt: json['updated_at'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'serial': serial,
//       'user': reportUserModel,
//       'category': reportCategoryModel,
//       'detail': detail,
//       'address': address,
//       'city': city,
//       'subdistrict': subdistrict,
//       'latitude': latitude,
//       'longitude': longitude,
//       'private': private,
//       'images': reportImageModels,
//       'created_at': createdAt,
//       'updated_at': updatedAt,
//     };
//   }
// }
