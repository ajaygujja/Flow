import 'package:flow/repository/api_repository.dart';
import 'package:flow/services/network_exceptions/network_exceptions.dart';
import 'package:flow/users_history/model/feelings_model.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  final _isLoading = false.obs;
  String? exceptions;
  final _usersFeelings = const FeelingsModel().obs;

  bool get isLoading => _isLoading.value;
  FeelingsModel get usersFeelings => _usersFeelings.value;

  void getUserFeelings() async {
    _isLoading.value = true;
    var apiResult = await ApiRepository.getInstance().getListOfUserFeeling();

    exceptions = null;
    _isLoading.value = false;

    apiResult.when(success: (data) {
      _usersFeelings.value = data;
    }, failure: (NetworkExceptions error) async {
      /// Exception Occured
      exceptions = NetworkExceptions.getErrorMessage(error);
    });
  }
}
