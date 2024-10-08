import 'package:riverpod_tutorial/generated/json/base/json_field.dart';
import 'package:riverpod_tutorial/generated/json/item_entity.g.dart';
import 'dart:convert';
export 'package:riverpod_tutorial/generated/json/item_entity.g.dart';

@JsonSerializable()
class ItemEntity {
	int? id = 0;
	String? title = '';
	String? description = '';
	String? category = '';
	double? price;
	double? discountPercentage;
	double? rating;
	int? stock = 0;
	List<String>? tags = [];
	String? brand = '';
	String? sku = '';
	int? weight = 0;
	ItemDimensions? dimensions;
	String? warrantyInformation = '';
	String? shippingInformation = '';
	String? availabilityStatus = '';
	List<ItemReviews>? reviews = [];
	String? returnPolicy = '';
	int? minimumOrderQuantity = 0;
	ItemMeta? meta;
	List<String>? images = [];
	String? thumbnail = '';

	ItemEntity();

	factory ItemEntity.fromJson(Map<String, dynamic> json) => $ItemEntityFromJson(json);

	Map<String, dynamic> toJson() => $ItemEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ItemDimensions {
	double? width;
	double? height;
	double? depth;

	ItemDimensions();

	factory ItemDimensions.fromJson(Map<String, dynamic> json) => $ItemDimensionsFromJson(json);

	Map<String, dynamic> toJson() => $ItemDimensionsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ItemReviews {
	int? rating = 0;
	String? comment = '';
	String? date = '';
	String? reviewerName = '';
	String? reviewerEmail = '';

	ItemReviews();

	factory ItemReviews.fromJson(Map<String, dynamic> json) => $ItemReviewsFromJson(json);

	Map<String, dynamic> toJson() => $ItemReviewsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ItemMeta {
	String? createdAt = '';
	String? updatedAt = '';
	String? barcode = '';
	String? qrCode = '';

	ItemMeta();

	factory ItemMeta.fromJson(Map<String, dynamic> json) => $ItemMetaFromJson(json);

	Map<String, dynamic> toJson() => $ItemMetaToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}