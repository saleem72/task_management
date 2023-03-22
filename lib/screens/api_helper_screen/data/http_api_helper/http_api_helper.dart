//
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../domian/api_helper.dart';
import '../../domian/exceptions/app_exception.dart';

class HttpApiHelper implements ApiHelper {
  final http.Client client;

  HttpApiHelper({required this.client});

  @override
  Future get({
    required String url,
    required String endPoint,
    Map<String, String>? headers,
    Map<String, dynamic>? params,
  }) async {
    Future<http.Response> request;
    try {
      final uri = Uri.parse(url + endPoint).replace(queryParameters: params);

      if (headers != null) {
        request = client.get(uri, headers: headers);
      } else {
        request = client.get(uri);
      }
      final response = await request;
      return _returnResponse(response);
    } on SocketException {
      throw ConnectionException('No Internet connection');
    } on TimeoutException {
      throw ConnectionException('No Internet connection');
    } on FormatException {
      throw BadResponseException('Fail to decode data');
    } on BadRequestException {
      rethrow;
    } on BadResponseException {
      rethrow;
    } on UnauthorisedException {
      rethrow;
    } on ServerException {
      rethrow;
    } on NotExsitsRouteException {
      rethrow;
    } catch (e) {
      print("🔥 error: ${e.runtimeType}");
      throw FetchDataException('Un expected error');
    }
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
        var responseJson = json.decode(response.body);
        debugPrint(responseJson.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 404:
        throw NotExsitsRouteException(response.body.toString());
      case 500:
        throw ServerException('');
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
