import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/app_user_repository/src/models/interest_model.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/domains/community_repository/src/models/highlight_model.dart';
import 'package:socialice/domains/event_repository/src/models/category_model.dart';
import 'package:socialice/domains/event_repository/src/models/comment_model.dart';
import 'package:socialice/domains/event_repository/src/models/comment_reply_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_type.dart';
import 'package:socialice/domains/http_repository/widgets/http_repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpViewmodel implements HttpRepository {
  final http.Client httpClient;
  // final API_ENDPOINT = "https://socialice-nextjs.vercel.app/api/v1";
  final API_ENDPOINT = "http://localhost:3000/api/v1";

  HttpViewmodel({required this.httpClient});

  @override
  Future<AppUserModel> requestAppUserModel() async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final response = await httpClient.get(Uri.parse("${API_ENDPOINT}/users"),
        headers: headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return AppUserModel.fromJson(data);
    }
    throw Exception("Example");
  }

  @override
  Future<AppUserModel> requestAppUserModelById({required String id}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final response = await httpClient
        .get(Uri.parse("${API_ENDPOINT}/users?id=${id}"), headers: headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return AppUserModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<AppUserModel> createAppUserModel(
      {required String uuid,
      required String name,
      required String surname,
      required String username,
      required String email,
      required String location,
      required double latitude,
      required double longitude}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "uuid": uuid,
      "name": name,
      "surname": surname,
      "username": username,
      "email": email,
      "location": location,
      "latitude": latitude,
      "longitude": longitude,
    });

    final response = await httpClient.post(Uri.parse("${API_ENDPOINT}/users"),
        headers: headers, body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return AppUserModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<AppUserModel> updateAppUserModel(
      {required String name,
      required String surname,
      required String username,
      required String description,
      String? profileImage,
      required String location,
      required double latitude,
      required double longitude}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "name": name,
      "surname": surname,
      "username": username,
      "description": description,
      "profileImage": profileImage,
      "location": location,
      "latitude": latitude,
      "longitude": longitude,
    });

    final response = await httpClient.put(Uri.parse("${API_ENDPOINT}/users"),
        headers: headers, body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return AppUserModel.fromJson(data);
    } else {
      throw Exception('httpupdateappuser');
    }
  }

  @override
  Future<bool> deleteAppUserModel() async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final response = await httpClient.delete(Uri.parse("${API_ENDPOINT}/users"),
        headers: headers);

    return response.statusCode == 200;
  }

  @override
  Future<AppUserModel> updateFavourites({required String eventId}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "eventId": eventId,
    });

    final response = await httpClient.put(
        Uri.parse("${API_ENDPOINT}/favourites"),
        headers: headers,
        body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return AppUserModel.fromJson(data);
    } else {
      throw Exception('httpupdateappuser');
    }
  }

  @override
  Future<List<InterestModel>> requestInterests() async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final response = await httpClient
        .get(Uri.parse("${API_ENDPOINT}/interests"), headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> data = await jsonDecode(response.body);

      return data.map((e) => InterestModel.fromJson(e)).toList();
    }
    throw Exception("Example");
  }

  @override
  Future<AppUserModel> updateInterests(
      {required List<InterestModel> interests}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "interests": interests,
    });

    final response = await httpClient.put(
        Uri.parse("${API_ENDPOINT}/interests"),
        headers: headers,
        body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return AppUserModel.fromJson(data);
    } else {
      throw Exception('httpupdateappuser');
    }
  }

  @override
  Future<List<EventModel>> requestEventsModel() async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final response = await httpClient.get(Uri.parse("${API_ENDPOINT}/events"),
        headers: headers);

    if (response.statusCode == 200) {
      try {
        final List<dynamic> data = await jsonDecode(response.body);
        return data.map((e) => EventModel.fromJson(e)).toList();
      } catch (e) {
        print(e);
      }
    }
    throw Exception("Example");
  }

  @override
  Future<EventModel> createEventModel(
      {required String name,
      required String description,
      required String image,
      required String placeName,
      required String completeAddress,
      required String communityId,
      required int startTimestamp,
      required int endTimestamp,
      required double latitude,
      required double longitude,
      required double price,
      required double priceWithoutDiscount,
      required EventType eventType}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "name": name,
      "description": description,
      "image": image,
      "placeName": placeName,
      "completeAddress": completeAddress,
      "communityId": communityId,
      "startTimestamp": startTimestamp,
      "endTimestamp": endTimestamp,
      "latitude": latitude,
      "longitude": longitude,
      "price": price,
      "priceWithoutDiscount": priceWithoutDiscount,
      "eventType": eventType,
    });

    final response = await httpClient.post(Uri.parse("${API_ENDPOINT}/events"),
        headers: headers, body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return EventModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<EventModel> updateEventModel(
      {required String id,
      required String name,
      required String description,
      required String image,
      required String placeName,
      required String completeAddress,
      required int startTimestamp,
      required int endTimestamp,
      required double latitude,
      required double longitude,
      required double price,
      required double priceWithoutDiscount,
      required EventType eventType}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "id": id,
      "name": name,
      "description": description,
      "image": image,
      "placeName": placeName,
      "completeAddress": completeAddress,
      "startTimestamp": startTimestamp,
      "endTimestamp": endTimestamp,
      "latitude": latitude,
      "longitude": longitude,
      "price": price,
      "priceWithoutDiscount": priceWithoutDiscount,
      "eventType": eventType,
    });

    final response = await httpClient.put(Uri.parse("${API_ENDPOINT}/events"),
        headers: headers, body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return EventModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<bool> deleteEventModel({required String id}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "id": id,
    });

    final response = await httpClient.delete(
        Uri.parse("${API_ENDPOINT}/events"),
        headers: headers,
        body: body);

    return response.statusCode == 200;
  }

  @override
  Future<HighlightModel> createHighlightedImagesModel(
      {required String eventId, required String image}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "eventId": eventId,
      "image": image,
    });

    final response = await httpClient.post(
        Uri.parse("${API_ENDPOINT}/highlights"),
        headers: headers,
        body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return HighlightModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<EventModel> updateOrganizersMembers(
      {required String eventId, required String username}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "eventId": eventId,
      "username": username,
    });

    final response = await httpClient.post(
        Uri.parse("${API_ENDPOINT}/organizers"),
        headers: headers,
        body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return EventModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<EventModel> updateParticipants({required String eventId}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "eventId": eventId,
    });

    final response = await httpClient.put(
        Uri.parse("${API_ENDPOINT}/participants"),
        headers: headers,
        body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return EventModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<EventModel> updateReports({required String eventId}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "eventId": eventId,
    });

    final response = await httpClient.put(Uri.parse("${API_ENDPOINT}/reports"),
        headers: headers, body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return EventModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<List<CommunityModel>> requestCommunitiesModel() async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final response = await httpClient
        .get(Uri.parse("${API_ENDPOINT}/communities"), headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> data = await jsonDecode(response.body);
      return data.map((e) => CommunityModel.fromJson(e)).toList();
    } else {
      // throw const ErrorApp(code: 'httpindexuniversities');
      throw Exception("Example");
    }
  }

  @override
  Future<CommunityModel> createCommunityModel(
      {required String image,
      required String name,
      required String city,
      required String description,
      required CategoryModel category}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "image": image,
      "name": name,
      "city": city,
      "description": description,
      "categoryId": category.id,
    });

    final response = await httpClient.post(
        Uri.parse("${API_ENDPOINT}/communities"),
        headers: headers,
        body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return CommunityModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<CommunityModel> updateCommunityModel(
      {required String id,
      required String image,
      required String name,
      required String city,
      required String description,
      required CategoryModel category}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "id": id,
      "image": image,
      "name": name,
      "city": city,
      "description": description,
      "categoryId": category.id,
    });

    final response = await httpClient.post(
        Uri.parse("${API_ENDPOINT}/communities"),
        headers: headers,
        body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return CommunityModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<bool> deleteCommunityModel({required String communityId}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "communityId": communityId,
    });

    final response = await httpClient.post(
        Uri.parse("${API_ENDPOINT}/communities"),
        headers: headers,
        body: body);

    return (response.statusCode == 200);
  }

  @override
  Future<CommunityModel> updateCommunityMembers(
      {required String communityId}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "communityId": communityId,
    });

    final response = await httpClient.post(Uri.parse("${API_ENDPOINT}/members"),
        headers: headers, body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return CommunityModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<List<CategoryModel>> requestCategories() async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final response = await httpClient
        .get(Uri.parse("${API_ENDPOINT}/categories"), headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> data = await jsonDecode(response.body);

      return data.map((e) => CategoryModel.fromJson(e)).toList();
    }
    throw Exception("Example");
  }

  @override
  Future<CommentModel> createCommentModel(
      {required String eventId, required String comment}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({"eventId": eventId, "comment": comment});

    final response = await httpClient.post(
        Uri.parse("${API_ENDPOINT}/comments"),
        headers: headers,
        body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return CommentModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<CommentModel> updateCommentModel({required String id}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "id": id,
    });

    final response = await httpClient.put(Uri.parse("${API_ENDPOINT}/comments"),
        headers: headers, body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return CommentModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<CommentModel> updateCommentReports({required String commentId}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({
      "commentId": commentId,
    });

    final response = await httpClient.put(
        Uri.parse("${API_ENDPOINT}/comment-reports"),
        headers: headers,
        body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return CommentModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<CommentReplyModel> createCommentReplyModel(
      {required String parentCommentId, required String comment}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body =
        jsonEncode({"parentCommentId": parentCommentId, "comment": comment});

    final response = await httpClient.post(
        Uri.parse("${API_ENDPOINT}/comment-replies"),
        headers: headers,
        body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return CommentReplyModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<CommentReplyModel> updateCommentReplyModel(
      {required String id}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({"id": id});

    final response = await httpClient.put(
        Uri.parse("${API_ENDPOINT}/comment-replies"),
        headers: headers,
        body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return CommentReplyModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }

  @override
  Future<CommentReplyModel> updateCommentRepliesReports(
      {required String commentReplyId}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final body = jsonEncode({"commentReplyId": commentReplyId});

    final response = await httpClient.put(
        Uri.parse("${API_ENDPOINT}/comment-replies-reports"),
        headers: headers,
        body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return CommentReplyModel.fromJson(data);
    }
    // return null;
    throw Exception("Example");
  }
}
