import 'package:dio/dio.dart';
import 'package:flow/domain/remote_interface.dart';
import 'package:flow/domain/web_services.dart';
import 'package:flow/model/feelings_model.dart';
import 'package:flow/services/api_results_wrapper/api_result.dart';
import 'package:flow/services/dio_client.dart';

const BASE_URL = 'https://www.qubehealth.com/';

class ApiRepository implements IDataSource {
  final IDataSource _webService;

  static ApiRepository? _instance;

  DioClient? dioClient;

  ApiRepository._(this._webService);

  static ApiRepository getInstance() {
    return _instance ??= ApiRepository._(
      WebServices(
        dioClient: DioClient(baseUrl: BASE_URL, dio: Dio()),
      ),
    );
  }

  @override
  Future<ApiResult<FeelingsModel>> getListOfUserFeeling() {
    return _webService.getListOfUserFeeling();
  }
}
