import 'package:flow/services/api_results_wrapper/api_result.dart';
import 'package:flow/users_history/model/feelings_model.dart';

abstract class IDataSource {
  Future<ApiResult<FeelingsModel>> getListOfUserFeeling();
}
