import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mobile_code_challenge_solution/core/constants/api_constants.dart';
import 'package:mobile_code_challenge_solution/core/constants/http_status.dart';
import 'package:mobile_code_challenge_solution/core/models/search_filter/search_filter.dart';
import 'package:mobile_code_challenge_solution/core/models/search_response/search_response.dart';

class GetReposApi {
  Dio client = Dio();
  Response<dynamic> response;

  Future<SearchResponse> getRepositories(SearchFilter searchFilter) async {
    try {
      response = await client.get(
        SearchEndpoint.search + searchFilter.toQueryStr(),
        options: Options(
          headers: ApiConstants.headersWithoutToken(),
          contentType: 'application/json',
          sendTimeout: ApiConstants.sendTimeOut,
          receiveTimeout: ApiConstants.receiveTimeOut,
          responseType: ResponseType.bytes,
        ),
      );
      if (response?.statusCode == HttpStatusCodes.ok) {
        return compute(SearchResponse.fromJson, response.data);
      } else {
        throw Exception(
          'Failed to get repositories.  '
          'Code: ${response.statusCode}- '
          'Message: ${response.toString()}',
        );
      }
    } on DioError catch (e) {
      print(e.toString());
    } finally {
      client.clear();
    }
    return null;
  }
}
