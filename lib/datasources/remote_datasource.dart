// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_api_unit_test/core/services/network_service.dart';
import 'package:flutter_api_unit_test/models/post_model.dart';

abstract class RemoteDataSource {
  Future<List<Post>> getPosts();
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final NetworkService networkService;
  RemoteDataSourceImpl(
    this.networkService,
  );
  
  @override
  Future<List<Post>> getPosts() {
    // TODO: implement getPosts
    throw UnimplementedError();
  }
 
}
