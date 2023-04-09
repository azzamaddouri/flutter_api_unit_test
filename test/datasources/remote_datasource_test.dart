import 'package:flutter_api_unit_test/core/services/network_service.dart';
import 'package:flutter_api_unit_test/datasources/remote_datasource.dart';
import 'package:flutter_api_unit_test/models/post_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'remote_datasource_test.mocks.dart';

@GenerateMocks([NetworkService]) // All I need is to be independed
void main() {
  late final RemoteDataSourceImpl remoteDataSource;
  late final NetworkService networkService;
  setUp(() {
    networkService = MockNetworkService();
    remoteDataSource = RemoteDataSourceImpl(networkService);
  });
  test('GetPosts should return posts without any exception', () {
    //arrange

    final posts = List.generate(
        5,
        (index) =>
            Post(userId: index, id: index, title: '$index', body: '$index'));
            
  });
}
