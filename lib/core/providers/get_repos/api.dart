import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mobile_code_challenge_solution/core/constants/api_constants.dart';
import 'package:mobile_code_challenge_solution/core/constants/http_status.dart';
import 'package:mobile_code_challenge_solution/core/models/search_filter/search_filter.dart';
import 'package:mobile_code_challenge_solution/core/models/search_response/search_response.dart';

class GetReposApi {
  Response<dynamic> response;
  Dio client = Dio();

  Future<SearchResponse> getRepositories(SearchFilter searchFilter) async {
    try {
      response = await client.get(
        SearchEndpoint.search + searchFilter.toQueryStr(),
        options: Options(
          headers: headersWithoutToken(),
          contentType: 'application/json',
          sendTimeout: sendTimeOut,
          receiveTimeout: receiveTimeOut,
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
      return null;
    } finally {
      client.clear();
    }
  }
}
