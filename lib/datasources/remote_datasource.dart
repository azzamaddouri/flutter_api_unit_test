// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_api_unit_test/core/services/network_service.dart';

abstract class RemoteDataSource {
  Future<dynamic> getPosts();
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final NetworkService networkService;
  RemoteDataSourceImpl(
    this.networkService,
  );
  @override
  Future getPosts() {
    throw UnimplementedError();
  }
}
