import 'package:dio/dio.dart';
import 'package:flow/domain/remote_interface.dart';
import 'package:flow/services/api_results/api_result.dart';
import 'package:flow/model/feelings_model.dart';
import 'package:flow/services/dio_client.dart';

const BASE_URL = 'https://zenquotes.io/';

class ApiRepository implements IDataSource {
  final IDataSource _webService;

  static ApiRepository? _instance;

  DioClient? dioClient;

  ApiRepository._(this._webService);

  static ApiRepository getInstance() {
    if (_instance == null) {
      var dio = Dio();
      _instance = ApiRepository._(
        WebServices(
          dioClient: DioClient(BASE_URL, dio),
        ),
      );
    }

    return _instance!;
  }

  @override
  Future<ApiResult<FeelingsModel>> getListOfUserFeeling() {
    // TODO: implement getListOfUserFeeling
    throw UnimplementedError();
  }
}
