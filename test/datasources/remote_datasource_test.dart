import 'package:flutter_api_unit_test/core/services/network_service.dart';
import 'package:flutter_api_unit_test/datasources/remote_datasource.dart';
import 'package:flutter_api_unit_test/models/post_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'remote_datasource_test.mocks.dart';

@GenerateMocks([NetworkService]) // All I need is to be independed
void main() {
  late final RemoteDataSourceImpl remoteDataSource;
  late final NetworkService mockNetworkService;
  setUp(() {
    mockNetworkService = MockNetworkService();
    remoteDataSource = RemoteDataSourceImpl(mockNetworkService);
  });
  test('GetPosts should return posts without any exception', () async {
    //arrange
    final posts = List.generate(
        5,
        (index) =>
            Post(userId: index, id: index, title: '$index', body: '$index'));
    //Convert list to a map
    final postsMap = posts.map((post) => post.toMap()).toList();
    when(mockNetworkService.get('https://jsonplaceholder.typicode.com/posts'))
        .thenAnswer((_) => Future.value(postsMap));
    //act
    final result = await remoteDataSource.getPosts();
    // assert
    expect(result, posts);
  });
}
