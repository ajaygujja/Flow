import 'package:flow/model/feelings_model.dart';
import 'package:flow/services/api_results/api_result.dart';

abstract class IDataSource {
  Future<ApiResult<FeelingsModel>> getListOfUserFeeling();
}
