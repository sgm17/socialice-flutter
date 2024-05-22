import 'package:socialice/constants/app_user_interests.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/domains/event_repository/src/models/category_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_type.dart';

final AppUserModel lauraAppUserModel = AppUserModel(
  id: 1,
  profileImage: 'assets/images/profile_image.png',
  name: 'Laura',
  surname: 'Nardella',
  username: 'lauranardella',
  location: 'Zurich, Switzerland',
  description: 'Hola soy Laura',
  joinedCommunities: [],
  interests: interests.sublist(2, 8),
  latitude: 47.266101424168,
  longitude: 8.676910896290018,
);
final AppUserModel sergiAppUserModel = AppUserModel(
    id: 2,
    profileImage: 'assets/images/profile_image.png',
    name: 'Sergi',
    surname: 'Garcia',
    username: 'sergigarciiaa',
    location: 'Zurich, Switzerland',
    description: 'Hola soy Sergi',
    joinedCommunities: [],
    interests: interests.sublist(0, 3),
    latitude: 47.266101424168,
    longitude: 8.676910896290018);

final CommunityModel socialSevenClub = CommunityModel(
    id: 1,
    owner: lauraAppUserModel,
    image: 'assets/images/event_group_picture.png',
    name: 'Social7Club',
    city: 'Zürich',
    lastEightMembers: [],
    description:
        "Welcome to Social 7 Club! The mission is simple, to meet people, make friends, and turn every event into sumething unforgettable. We’re not just a community; we’re an attitude. No formalities, just good vibes, genuine friendships and experiences worth having. Don’t hesitate to come alone. When you sign up, you’ll automatically receive a link to a WhatsApp gorup chat. This way, you can chat with people or even arrange to meet up beforehand to ease any nerves about coming alone :) Joinus and discover the magic of meaningful connections. Your next adventure starts here, Laura <3",
    futureEvents: [],
    pastEvents: [],
    category: CategoryModel.allCategories[15],
    totalMembers: 714);

final EventModel eventCreatedByLaura = EventModel(
    id: 1,
    communityId: 1,
    name: 'Salvaje',
    horizontalImage: 'assets/images/all_events_popular_image_2.png',
    verticalImage: 'assets/images/all_event_image_4.jpeg',
    favourite: false,
    startTimestamp: DateTime.fromMillisecondsSinceEpoch(1716069600000),
    endTimestamp: DateTime.fromMillisecondsSinceEpoch(1716004800000),
    placeName: 'SOHO Zurich',
    price: 20,
    priceWithoutDiscount: 25,
    completeAddress: 'Hardstrasse 260, 8005 Zürich',
    owner: lauraAppUserModel,
    organizers: [],
    latitude: 47.38857771685321,
    longitude: 8.520712638907092,
    photos: [],
    comments: [],
    participants: [],
    popular: true,
    communityImage: 'assets/images/event_group_picture.png',
    communityName: 'Social7Club',
    eventType: EventType.payment,
    joined: false);
