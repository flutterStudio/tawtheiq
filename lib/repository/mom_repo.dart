class MomRepoRepo {
  // final _service = ApiService();

  // EndPoints
  final String dashboard = 'dashboard';

  // Future<Data<Post>> postProject(Post post) async {
  //   Post postToAdd = Post.copBasics(post);
  //   postToAdd.categories = post.categories;
  //   postToAdd.tags = post.tags;
  //   try {
  //     // upload attachments first
  //     for (Attachment attachment in post.attachments) {
  //       var attchment = await postAttachment(files: [attachment.file]);
  //       if (attchment.status == DataStatus.succeed) {
  //         postToAdd.attachments.add(attchment.data);
  //       }
  //     }
  //   } catch (e) {
  //     return Data.faild(message: "Error While uploading files.");
  //   }

  //   try {
  //     final responceText = await _service.request(
  //         requestType: RequestType.POST,
  //         endPoint: postPorjectEndPoint,
  //         parameter: postToAdd.postJson());

  //     final jsonResponse = json.decode(responceText);
  //     Post postResponse = Post.fromJson(jsonResponse);

  //     return Data.succeed(data: postResponse);
  //   } on NetworkException catch (e) {
  //     return Data.faild(message: e.message);
  //   } catch (e) {
  //     return Data.faild(message: "An error has occurred");
  //   }
  // }
}
