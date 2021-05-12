import 'package:frontend_app_public/model/category_model.dart';
import 'package:frontend_app_public/model/report_status_enum.dart';
import 'package:frontend_app_public/model/user_model.dart';

class ReportModel {
  final int id;
  final String detail;
  final int status;
  final UserModel userModel;
  final CategoryModel categoryModel;
  final String city;
  final String address;
  final String subdistrict;
  final double latitude;
  final double longitude;

  ReportModel({
    required this.id,
    required this.detail,
    required this.status,
    required this.userModel,
    required this.categoryModel,
    required this.city,
    required this.address,
    required this.subdistrict,
    required this.latitude,
    required this.longitude,
  });

  static ReportModel one() {
    return ReportModel(
      id: 1,
      detail: 'Labore eu occaecat cillum exercitation.',
      address: 'Qui voluptate duis est sit ut sit dolore cupidatat sit culpa.',
      categoryModel: CategoryModel.one(),
      city: 'Bikini Bottom',
      latitude: 12.2345345,
      longitude: 23.2345645,
      status: ReportStatusEnum.onProgress.index,
      subdistrict: 'Nagoya',
      userModel: UserModel.one(),
    );
  }

  static List<ReportModel> all() {
    return [
      ReportModel(
        id: 1,
        detail: 'Labore eu occaecat cillum exercitation.',
        address: 'Qui voluptate ut sit dolore cupidatat sit culpa.',
        categoryModel: CategoryModel.one(),
        city: 'Bikini Bottom',
        latitude: 12.2345345,
        longitude: 23.2345645,
        status: ReportStatusEnum.onProgress.index,
        subdistrict: 'Nagoya',
        userModel: UserModel.one(),
      ),
      ReportModel(
        id: 2,
        detail: 'Labore eu occaecat cillum exercitation.',
        address: 'Est sit ut sit dolore cupidatat sit culpa.',
        categoryModel: CategoryModel.one(),
        city: 'Rock Bottom',
        latitude: 12.2345345,
        longitude: 23.2345645,
        status: ReportStatusEnum.completed.index,
        subdistrict: 'Saitama',
        userModel: UserModel.one(),
      )
    ];
  }
}
