import 'package:flow/model/feelings_model.dart';
import 'package:flow/services/api_results_wrapper/api_result.dart';

abstract class IDataSource {
  Future<ApiResult<FeelingsModel>> getListOfUserFeeling();
}
