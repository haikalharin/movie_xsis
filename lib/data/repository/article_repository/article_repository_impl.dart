

import 'package:base_app_new/data/model/article_detail_model/article_detail_model.dart';

import '../../../common/exceptions/network_connection_exception.dart';
import '../../../common/network/network_info.dart';
import '../../datasource/remote_datasource.dart';

import '../../model/response_model/response_model.dart';
import 'article_repository.dart';

class ArticleRepositoryImpl extends ArticleRepository {
  final NetworkInfoImpl networkInfo;
  final RemoteDataSource remoteDatasource;

  ArticleRepositoryImpl(this.networkInfo, this.remoteDatasource);

  @override
  Future<ResponseModel> fetchArticle(
      int page,String start, String end) async {
    if (await networkInfo.isConnected) {
      return remoteDatasource.fetchArticle(page.toString(),start,end);
    }
    throw NetworkConnectionException();
  }

  @override
  Future<ArticleDetailModel> readDetailArticle(int id) async {
    if (await networkInfo.isConnected) {
      return remoteDatasource.readDetailArticle(id);
    }
    throw NetworkConnectionException();
  }

}
