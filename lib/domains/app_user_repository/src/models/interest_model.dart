import 'package:freezed_annotation/freezed_annotation.dart';
part 'interest_model.freezed.dart';
part 'interest_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class InterestModel with _$InterestModel {
  const InterestModel._();

  factory InterestModel.fromJson(Map<String, dynamic> json) =>
      _$InterestModelFromJson(json);

  Map<String, dynamic> toJson() => _$InterestModelToJson(this);

  static final interests = [
    InterestModel(id: "1", name: "Social life"),
    InterestModel(id: "2", name: "Poker"),
    InterestModel(id: "3", name: "Writers and new writers"),
    InterestModel(id: "4", name: "Ecstatic dance"),
    InterestModel(id: "5", name: "Law of attraction"),
    InterestModel(id: "6", name: "Yoga hatha"),
    InterestModel(id: "7", name: "Outdoor adventures"),
    InterestModel(id: "8", name: "Creative circles"),
    InterestModel(id: "9", name: "Transformation"),
    InterestModel(id: "10", name: "Travel"),
    InterestModel(id: "11", name: "Memoir writing"),
    InterestModel(id: "12", name: "Education"),
    InterestModel(id: "13", name: "Women entrepreneurs"),
    InterestModel(id: "14", name: "English"),
    InterestModel(id: "15", name: "Games"),
    InterestModel(id: "16", name: "Poker tournaments"),
    InterestModel(id: "17", name: "Spanish"),
    InterestModel(id: "18", name: "Non-profit organizations"),
    InterestModel(id: "19", name: "Culture"),
    InterestModel(id: "20", name: "Support group"),
    InterestModel(id: "21", name: "Hip hop"),
    InterestModel(id: "22", name: "Training camps to get in shape"),
    InterestModel(id: "23", name: "Dance and movement"),
    InterestModel(id: "24", name: "Comunication"),
    InterestModel(id: "25", name: "Weekend adventures"),
    InterestModel(id: "26", name: "Personal discovery"),
    InterestModel(id: "27", name: "Software development"),
    InterestModel(id: "28", name: "Buddhism"),
    InterestModel(id: "29", name: "Social justice"),
    InterestModel(id: "30", name: "French Bulldog"),
    InterestModel(id: "31", name: "Big Data"),
    InterestModel(id: "32", name: "Live music"),
    InterestModel(id: "33", name: "Music"),
    InterestModel(id: "34", name: "Young, single professionals"),
    InterestModel(id: "35", name: "Self-empowerment"),
    InterestModel(id: "36", name: "Learning"),
    InterestModel(id: "37", name: "Science fiction writing"),
    InterestModel(id: "38", name: "Making contacts"),
    InterestModel(id: "39", name: "Role-playing and board games"),
    InterestModel(id: "40", name: "Outdoor adventures"),
    InterestModel(id: "41", name: "Dance classes"),
    InterestModel(id: "42", name: "Business strategy"),
    InterestModel(id: "43", name: "English-Spanish exchange")
  ];

  const factory InterestModel({
    required String id,
    required String name,
  }) = _CategoryModel;
}
