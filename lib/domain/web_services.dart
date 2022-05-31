import 'package:flow/constant.dart';
import 'package:flow/model/feelings_model.dart';
import 'package:flow/services/api_results_wrapper/api_result.dart';
import 'package:flow/services/dio_client.dart';
import 'package:flow/services/network_exceptions/network_exceptions.dart';

import 'remote_interface.dart';

class WebServices implements IDataSource {
  final DioClient? dioClient;

  WebServices({required this.dioClient})
      : assert(
          dioClient != null,
          "DioClient cannot be null",
        );

  @override
  Future<ApiResult<FeelingsModel>> getListOfUserFeeling() async {
    var params = {
      "user_id": 3206161992,
      "feeling_date": "15-04-2022",
    };

    dioClient?.dioInstance?.options.headers['x-api-key'] =
        'f6d646a6c2f2df883ea0cccaa4097358ede98284';
    try {
      final response = await dioClient!.request(
          url: "qube_services/api/testservice/getListOfUserFeeling",
          params: params,
          method: Method.POST);

      if (response.statusCode != null && response.statusCode == 200) {
        return ApiResult.success(
          data: feelingsModelFromJson(response.data),
        );
      } else {
        return ApiResult.failure(
          error: NetworkExceptions.handleResponse(response.statusCode ?? 500),
        );
      }
    } catch (e) {
      logger.e("---->" + e.toString());
      return ApiResult.failure(error: NetworkExceptions.getDioException(e)!);
    }
  }
}
