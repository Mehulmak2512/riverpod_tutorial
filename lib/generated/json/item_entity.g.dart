import 'package:riverpod_tutorial/generated/json/base/json_convert_content.dart';
import 'package:riverpod_tutorial/item_entity.dart';

ItemEntity $ItemEntityFromJson(Map<String, dynamic> json) {
  final ItemEntity itemEntity = ItemEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    itemEntity.id = id;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    itemEntity.title = title;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    itemEntity.description = description;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    itemEntity.category = category;
  }
  final double? price = jsonConvert.convert<double>(json['price']);
  if (price != null) {
    itemEntity.price = price;
  }
  final double? discountPercentage = jsonConvert.convert<double>(json['discountPercentage']);
  if (discountPercentage != null) {
    itemEntity.discountPercentage = discountPercentage;
  }
  final double? rating = jsonConvert.convert<double>(json['rating']);
  if (rating != null) {
    itemEntity.rating = rating;
  }
  final int? stock = jsonConvert.convert<int>(json['stock']);
  if (stock != null) {
    itemEntity.stock = stock;
  }
  final List<String>? tags = (json['tags'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (tags != null) {
    itemEntity.tags = tags;
  }
  final String? brand = jsonConvert.convert<String>(json['brand']);
  if (brand != null) {
    itemEntity.brand = brand;
  }
  final String? sku = jsonConvert.convert<String>(json['sku']);
  if (sku != null) {
    itemEntity.sku = sku;
  }
  final int? weight = jsonConvert.convert<int>(json['weight']);
  if (weight != null) {
    itemEntity.weight = weight;
  }
  final ItemDimensions? dimensions = jsonConvert.convert<ItemDimensions>(json['dimensions']);
  if (dimensions != null) {
    itemEntity.dimensions = dimensions;
  }
  final String? warrantyInformation = jsonConvert.convert<String>(json['warrantyInformation']);
  if (warrantyInformation != null) {
    itemEntity.warrantyInformation = warrantyInformation;
  }
  final String? shippingInformation = jsonConvert.convert<String>(json['shippingInformation']);
  if (shippingInformation != null) {
    itemEntity.shippingInformation = shippingInformation;
  }
  final String? availabilityStatus = jsonConvert.convert<String>(json['availabilityStatus']);
  if (availabilityStatus != null) {
    itemEntity.availabilityStatus = availabilityStatus;
  }
  final List<ItemReviews>? reviews = (json['reviews'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<ItemReviews>(e) as ItemReviews).toList();
  if (reviews != null) {
    itemEntity.reviews = reviews;
  }
  final String? returnPolicy = jsonConvert.convert<String>(json['returnPolicy']);
  if (returnPolicy != null) {
    itemEntity.returnPolicy = returnPolicy;
  }
  final int? minimumOrderQuantity = jsonConvert.convert<int>(json['minimumOrderQuantity']);
  if (minimumOrderQuantity != null) {
    itemEntity.minimumOrderQuantity = minimumOrderQuantity;
  }
  final ItemMeta? meta = jsonConvert.convert<ItemMeta>(json['meta']);
  if (meta != null) {
    itemEntity.meta = meta;
  }
  final List<String>? images = (json['images'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (images != null) {
    itemEntity.images = images;
  }
  final String? thumbnail = jsonConvert.convert<String>(json['thumbnail']);
  if (thumbnail != null) {
    itemEntity.thumbnail = thumbnail;
  }
  return itemEntity;
}

Map<String, dynamic> $ItemEntityToJson(ItemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['title'] = entity.title;
  data['description'] = entity.description;
  data['category'] = entity.category;
  data['price'] = entity.price;
  data['discountPercentage'] = entity.discountPercentage;
  data['rating'] = entity.rating;
  data['stock'] = entity.stock;
  data['tags'] = entity.tags;
  data['brand'] = entity.brand;
  data['sku'] = entity.sku;
  data['weight'] = entity.weight;
  data['dimensions'] = entity.dimensions?.toJson();
  data['warrantyInformation'] = entity.warrantyInformation;
  data['shippingInformation'] = entity.shippingInformation;
  data['availabilityStatus'] = entity.availabilityStatus;
  data['reviews'] = entity.reviews?.map((v) => v.toJson()).toList();
  data['returnPolicy'] = entity.returnPolicy;
  data['minimumOrderQuantity'] = entity.minimumOrderQuantity;
  data['meta'] = entity.meta?.toJson();
  data['images'] = entity.images;
  data['thumbnail'] = entity.thumbnail;
  return data;
}

extension ItemEntityExtension on ItemEntity {
  ItemEntity copyWith({
    int? id,
    String? title,
    String? description,
    String? category,
    double? price,
    double? discountPercentage,
    double? rating,
    int? stock,
    List<String>? tags,
    String? brand,
    String? sku,
    int? weight,
    ItemDimensions? dimensions,
    String? warrantyInformation,
    String? shippingInformation,
    String? availabilityStatus,
    List<ItemReviews>? reviews,
    String? returnPolicy,
    int? minimumOrderQuantity,
    ItemMeta? meta,
    List<String>? images,
    String? thumbnail,
  }) {
    return ItemEntity()
      ..id = id ?? this.id
      ..title = title ?? this.title
      ..description = description ?? this.description
      ..category = category ?? this.category
      ..price = price ?? this.price
      ..discountPercentage = discountPercentage ?? this.discountPercentage
      ..rating = rating ?? this.rating
      ..stock = stock ?? this.stock
      ..tags = tags ?? this.tags
      ..brand = brand ?? this.brand
      ..sku = sku ?? this.sku
      ..weight = weight ?? this.weight
      ..dimensions = dimensions ?? this.dimensions
      ..warrantyInformation = warrantyInformation ?? this.warrantyInformation
      ..shippingInformation = shippingInformation ?? this.shippingInformation
      ..availabilityStatus = availabilityStatus ?? this.availabilityStatus
      ..reviews = reviews ?? this.reviews
      ..returnPolicy = returnPolicy ?? this.returnPolicy
      ..minimumOrderQuantity = minimumOrderQuantity ?? this.minimumOrderQuantity
      ..meta = meta ?? this.meta
      ..images = images ?? this.images
      ..thumbnail = thumbnail ?? this.thumbnail;
  }
}

ItemDimensions $ItemDimensionsFromJson(Map<String, dynamic> json) {
  final ItemDimensions itemDimensions = ItemDimensions();
  final double? width = jsonConvert.convert<double>(json['width']);
  if (width != null) {
    itemDimensions.width = width;
  }
  final double? height = jsonConvert.convert<double>(json['height']);
  if (height != null) {
    itemDimensions.height = height;
  }
  final double? depth = jsonConvert.convert<double>(json['depth']);
  if (depth != null) {
    itemDimensions.depth = depth;
  }
  return itemDimensions;
}

Map<String, dynamic> $ItemDimensionsToJson(ItemDimensions entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['width'] = entity.width;
  data['height'] = entity.height;
  data['depth'] = entity.depth;
  return data;
}

extension ItemDimensionsExtension on ItemDimensions {
  ItemDimensions copyWith({
    double? width,
    double? height,
    double? depth,
  }) {
    return ItemDimensions()
      ..width = width ?? this.width
      ..height = height ?? this.height
      ..depth = depth ?? this.depth;
  }
}

ItemReviews $ItemReviewsFromJson(Map<String, dynamic> json) {
  final ItemReviews itemReviews = ItemReviews();
  final int? rating = jsonConvert.convert<int>(json['rating']);
  if (rating != null) {
    itemReviews.rating = rating;
  }
  final String? comment = jsonConvert.convert<String>(json['comment']);
  if (comment != null) {
    itemReviews.comment = comment;
  }
  final String? date = jsonConvert.convert<String>(json['date']);
  if (date != null) {
    itemReviews.date = date;
  }
  final String? reviewerName = jsonConvert.convert<String>(json['reviewerName']);
  if (reviewerName != null) {
    itemReviews.reviewerName = reviewerName;
  }
  final String? reviewerEmail = jsonConvert.convert<String>(json['reviewerEmail']);
  if (reviewerEmail != null) {
    itemReviews.reviewerEmail = reviewerEmail;
  }
  return itemReviews;
}

Map<String, dynamic> $ItemReviewsToJson(ItemReviews entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['rating'] = entity.rating;
  data['comment'] = entity.comment;
  data['date'] = entity.date;
  data['reviewerName'] = entity.reviewerName;
  data['reviewerEmail'] = entity.reviewerEmail;
  return data;
}

extension ItemReviewsExtension on ItemReviews {
  ItemReviews copyWith({
    int? rating,
    String? comment,
    String? date,
    String? reviewerName,
    String? reviewerEmail,
  }) {
    return ItemReviews()
      ..rating = rating ?? this.rating
      ..comment = comment ?? this.comment
      ..date = date ?? this.date
      ..reviewerName = reviewerName ?? this.reviewerName
      ..reviewerEmail = reviewerEmail ?? this.reviewerEmail;
  }
}

ItemMeta $ItemMetaFromJson(Map<String, dynamic> json) {
  final ItemMeta itemMeta = ItemMeta();
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    itemMeta.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updatedAt']);
  if (updatedAt != null) {
    itemMeta.updatedAt = updatedAt;
  }
  final String? barcode = jsonConvert.convert<String>(json['barcode']);
  if (barcode != null) {
    itemMeta.barcode = barcode;
  }
  final String? qrCode = jsonConvert.convert<String>(json['qrCode']);
  if (qrCode != null) {
    itemMeta.qrCode = qrCode;
  }
  return itemMeta;
}

Map<String, dynamic> $ItemMetaToJson(ItemMeta entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['createdAt'] = entity.createdAt;
  data['updatedAt'] = entity.updatedAt;
  data['barcode'] = entity.barcode;
  data['qrCode'] = entity.qrCode;
  return data;
}

extension ItemMetaExtension on ItemMeta {
  ItemMeta copyWith({
    String? createdAt,
    String? updatedAt,
    String? barcode,
    String? qrCode,
  }) {
    return ItemMeta()
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..barcode = barcode ?? this.barcode
      ..qrCode = qrCode ?? this.qrCode;
  }
}