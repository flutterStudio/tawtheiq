import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:tawtheiq/common/settings.dart';
import 'package:tawtheiq/model/attachment.dart';
import 'package:tawtheiq/model/bid.dart';
import 'package:tawtheiq/model/data.dart';
import 'package:tawtheiq/model/post.dart';
import 'package:tawtheiq/model/project_details.dart';
import 'package:tawtheiq/repository/user_repository.dart';
import 'package:tawtheiq/services/api_service.dart';
import 'package:tawtheiq/utils/exception.dart';
import 'package:tawtheiq/service/api_service.dart';

class ProjectsRepo {
  final _service = ApiService();
  // final _userRepo = UserRepository.instance();
  //EndPoints
  // final String postPorjectEndPoint = 'Posts';
  // final String uploadAttachment = 'Attachments/upload';
  // final String postProjectEndPoint = 'Posts';
  // final String biddingEndpoint = 'Biddings';
  // final String projectBids = 'Biddings/Post';
  // final String chooseBidderEndpoint = '/api/Posts/:postId/Winner';
  // final String closeProjectEndpoint = 'Posts/:id/Locks';

  // List<Post> _projects = [];

  // static const bool IN_CACHE = false;

  // List<Post> get projects => _projects;

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

  // Future<Data<List<Post>>> getAllProjects() async {
  //   try {
  //     String response = await ApiService()
  //         .request(requestType: RequestType.GET, endPoint: 'Projects');
  //     if (response != null) {
  //       var responseList = jsonDecode(response) as List;
  //       if (responseList.length == 0) {
  //         return Data.empty();
  //       }
  //       List<Post> projects = [];

  //       for (var json in responseList) {
  //         Post project = Post.fromJson(json);
  //         projects.add(project);
  //       }
  //       _projects = projects;
  //       return Data.succeed(data: _projects);
  //     } else {
  //       return Data.faild(message: "Unknown error");
  //     }
  //   } on NetworkException catch (e) {
  //     return Data.faild(message: e.info);
  //   } catch (e) {
  //     return Data.faild(message: "Unknown error");
  //   }
  // }

  // Future<Data<Attachment>> postAttachment(
  //     {@required List<PlatformFile> files}) async {
  //   try {
  //     final responceText = await _service.request(
  //         isMultiPartForm: true,
  //         requestType: RequestType.POST,
  //         files: files,
  //         endPoint: uploadAttachment,
  //         parameter: {});
  //     final jsonResponse = json.decode(responceText);
  //     Attachment attachmentResponse = Attachment.fromJson(jsonResponse);
  //     return Data.succeed(data: attachmentResponse);
  //   } on NetworkException catch (e) {
  //     return Data.faild(message: e.message);
  //   } catch (e) {
  //     return Data.faild(message: "An error has occurred");
  //   }
  // }

  // Future<Data<ProjectDetails>> fetchProjectDetails(int id) async {
  //   try {
  //     final url = '$postProjectEndPoint/$id';

  //     final responseText = await _service.request(
  //         requestType: RequestType.GET,
  //         endPoint: url,
  //         token: _userRepo.currentUser.token);

  //     final jsonResponse = json.decode(responseText);
  //     // Only the first element, cause we fetch project details by id
  //     ProjectDetails projectResponse = ProjectDetails.fromJson(jsonResponse);
  //     return Data.succeed(data: projectResponse);
  //   } on NetworkException catch (e) {
  //     return Data.faild(message: e.message);
  //   } catch (e) {
  //     print(e);
  //     return Data.faild(message: "An error has occurred");
  //   }
  // }

  // Future<Data<Bid>> fetchBidOnProject(int id) async {
  //   try {
  //     final url = '$projectBids/$id';
  //     final response =
  //         await _service.request(requestType: RequestType.GET, endPoint: url);
  //     final json = jsonDecode(response);
  //     return Data.succeed(data: Bid.fromJson(json));
  //   } on NetworkException catch (e) {
  //     return Data.faild(message: e.message);
  //   } catch (e) {
  //     print(e);
  //     return Data.faild(message: "An error has occurred");
  //   }
  // }

  // Future<Data<List<Bid>>> fetchAllBidsOnProject(int id) async {
  //   try {
  //     final url = '$projectBids/$id';
  //     final response =
  //         await _service.request(requestType: RequestType.GET, endPoint: url);
  //     final json = jsonDecode(response);
  //     List<Bid> bids = [];

  //     for (int i = 0; i < json.length; i++) {
  //       bids.add(Bid.fromJson(json[i]));
  //     }

  //     return Data.succeed(data: bids);
  //   } on NetworkException catch (e) {
  //     return Data.faild(message: e.message);
  //   } catch (e) {
  //     print(e);
  //     return Data.faild(message: "An error has occurred");
  //   }
  // }

  // Future<Data<Bid>> bidOnProject(Map<String, dynamic> bid) async {
  //   try {
  //     final response = await _service.request(
  //         requestType: RequestType.POST,
  //         endPoint: biddingEndpoint,
  //         parameter: bid);

  //     final json = jsonDecode(response);

  //     return Data.succeed(data: json);
  //   } on NetworkException catch (e) {
  //     return Data.faild(message: e.message);
  //   } catch (e) {
  //     return Data.faild(message: "An error has occurred");
  //   }
  // }

  // Future<Data> chooseBidder(int postId, int bidderId) async {
  //   try {
  //     final url =
  //         chooseBidderEndpoint.replaceAll(':posterId', postId.toString());

  //     final response = await _service.request(
  //         requestType: RequestType.POST,
  //         endPoint: url,
  //         isMultiPartForm: true,
  //         fields: {'winnerId': '$bidderId'},
  //         token: _userRepo.currentUser.token);
  //     final json = jsonDecode(response);
  //     List<Bid> bids = [];

  //     for (int i = 0; i < json.length; i++) {
  //       bids.add(Bid.fromJson(json[i]));
  //     }

  //     return Data.succeed(data: bids);
  //   } on NetworkException catch (e) {
  //     return Data.faild(message: e.message);
  //   } catch (e) {
  //     print(e);
  //     return Data.faild(message: "An error has occurred");
  //   }
  // }

  // Future<Data> closeProject(int id) async {
  //   try {
  //     final url = closeProjectEndpoint.replaceAll(':id', id.toString());
  //     final response = await _service.request(
  //       requestType: RequestType.PUT,
  //       endPoint: url,
  //     );

  //     final json = jsonDecode(response);

  //     return Data.succeed(data: json);
  //   } on NetworkException catch (e) {
  //     return Data.faild(message: e.message);
  //   } catch (e) {
  //     return Data.faild(message: "An error has occurred");
  //   }
  // }
}
