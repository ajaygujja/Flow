import 'package:flutter/foundation.dart';
import 'package:quotes_app/constant.dart';
import 'package:quotes_app/domain/domain.dart';
import 'package:quotes_app/model/models.dart';
import 'package:quotes_app/services/services.dart';

class WebServices implements IDataSource {
  final DioClient? dioClient;

  WebServices({required this.dioClient})
      : assert(
          dioClient != null,
          "DioClient cannot be null",
        );

  @override
  Future<ApiResult<List<QuoteResponse>>> getQuotes() async {
    try {
      final response =
          await dioClient!.request(url: "api/quotes", method: Method.GET);

      if (response.statusCode != null && response.statusCode == 200) {
        final parser = SearchResultsParser();

        final quoteData = await parser.parseInBackground(response.data);

        return ApiResult.success(data: quoteData);
      } else {
        return ApiResult.failure(
            error:
                NetworkExceptions.handleResponse(response.statusCode ?? 500));
      }
    } catch (e) {
      logger.e(e.toString());
      return ApiResult.failure(error: NetworkExceptions.getDioException(e)!);
    }
  }
}

class SearchResultsParser {
  Future<List<QuoteResponse>> parseInBackground(String encodedJson) {
    // compute spawns an isolate,
    // runs a callback on that isolate,
    // and returns a Future with the result
    return compute(_decodeAndParseJson, encodedJson);
  }

  List<QuoteResponse> _decodeAndParseJson(String encodedJson) {
    final jsonData = quoteResponseFromJson(encodedJson);

    // final quoteList = QuoteList.fromJson(jsonData);
    return jsonData;
  }
}
