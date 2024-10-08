import 'package:riverpod_tutorial/generated/json/base/json_convert_content.dart';
import 'package:riverpod_tutorial/sevenstarfx/withdraw_requet_history_entity.dart';

WithdrawRequestHistoryEntity $WithdrawRequetHistoryEntityFromJson(Map<String, dynamic> json) {
  final WithdrawRequestHistoryEntity withdrawRequetHistoryEntity = WithdrawRequestHistoryEntity();
  final WithdrawRequetHistoryResponse? response = jsonConvert.convert<WithdrawRequetHistoryResponse>(json['response']);
  if (response != null) {
    withdrawRequetHistoryEntity.response = response;
  }
  final WithdrawRequetHistoryData? data = jsonConvert.convert<WithdrawRequetHistoryData>(json['data']);
  if (data != null) {
    withdrawRequetHistoryEntity.data = data;
  }
  return withdrawRequetHistoryEntity;
}

Map<String, dynamic> $WithdrawRequetHistoryEntityToJson(WithdrawRequestHistoryEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['response'] = entity.response?.toJson();
  data['data'] = entity.data?.toJson();
  return data;
}

extension WithdrawRequetHistoryEntityExtension on WithdrawRequestHistoryEntity {
  WithdrawRequestHistoryEntity copyWith({
    WithdrawRequetHistoryResponse? response,
    WithdrawRequetHistoryData? data,
  }) {
    return WithdrawRequestHistoryEntity()
      ..response = response ?? this.response
      ..data = data ?? this.data;
  }
}

WithdrawRequetHistoryResponse $WithdrawRequetHistoryResponseFromJson(Map<String, dynamic> json) {
  final WithdrawRequetHistoryResponse withdrawRequetHistoryResponse = WithdrawRequetHistoryResponse();
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    withdrawRequetHistoryResponse.status = status;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    withdrawRequetHistoryResponse.message = message;
  }
  return withdrawRequetHistoryResponse;
}

Map<String, dynamic> $WithdrawRequetHistoryResponseToJson(WithdrawRequetHistoryResponse entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['message'] = entity.message;
  return data;
}

extension WithdrawRequetHistoryResponseExtension on WithdrawRequetHistoryResponse {
  WithdrawRequetHistoryResponse copyWith({
    String? status,
    String? message,
  }) {
    return WithdrawRequetHistoryResponse()
      ..status = status ?? this.status
      ..message = message ?? this.message;
  }
}

WithdrawRequetHistoryData $WithdrawRequetHistoryDataFromJson(Map<String, dynamic> json) {
  final WithdrawRequetHistoryData withdrawRequetHistoryData = WithdrawRequetHistoryData();
  final List<WithdrawRequetHistoryDataUsers>? users = (json['users'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<WithdrawRequetHistoryDataUsers>(e) as WithdrawRequetHistoryDataUsers).toList();
  if (users != null) {
    withdrawRequetHistoryData.users = users;
  }
  final WithdrawRequetHistoryDataPagination? pagination = jsonConvert.convert<WithdrawRequetHistoryDataPagination>(json['pagination']);
  if (pagination != null) {
    withdrawRequetHistoryData.pagination = pagination;
  }
  return withdrawRequetHistoryData;
}

Map<String, dynamic> $WithdrawRequetHistoryDataToJson(WithdrawRequetHistoryData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['users'] = entity.users?.map((v) => v.toJson()).toList();
  data['pagination'] = entity.pagination?.toJson();
  return data;
}

extension WithdrawRequetHistoryDataExtension on WithdrawRequetHistoryData {
  WithdrawRequetHistoryData copyWith({
    List<WithdrawRequetHistoryDataUsers>? users,
    WithdrawRequetHistoryDataPagination? pagination,
  }) {
    return WithdrawRequetHistoryData()
      ..users = users ?? this.users
      ..pagination = pagination ?? this.pagination;
  }
}

WithdrawRequetHistoryDataUsers $WithdrawRequetHistoryDataUsersFromJson(Map<String, dynamic> json) {
  final WithdrawRequetHistoryDataUsers withdrawRequetHistoryDataUsers = WithdrawRequetHistoryDataUsers();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    withdrawRequetHistoryDataUsers.id = id;
  }
  final int? userId = jsonConvert.convert<int>(json['user_id']);
  if (userId != null) {
    withdrawRequetHistoryDataUsers.userId = userId;
  }
  final String? walletId = jsonConvert.convert<String>(json['wallet_id']);
  if (walletId != null) {
    withdrawRequetHistoryDataUsers.walletId = walletId;
  }
  final int? amount = jsonConvert.convert<int>(json['amount']);
  if (amount != null) {
    withdrawRequetHistoryDataUsers.amount = amount;
  }
  final double? dollarRate = jsonConvert.convert<double>(json['dollar_rate']);
  if (dollarRate != null) {
    withdrawRequetHistoryDataUsers.dollarRate = dollarRate;
  }
  final dynamic inr = json['inr'];
  if (inr != null) {
    withdrawRequetHistoryDataUsers.inr = inr;
  }
  final String? currency = jsonConvert.convert<String>(json['currency']);
  if (currency != null) {
    withdrawRequetHistoryDataUsers.currency = currency;
  }
  final String? paymentProcessor = jsonConvert.convert<String>(json['payment_processor']);
  if (paymentProcessor != null) {
    withdrawRequetHistoryDataUsers.paymentProcessor = paymentProcessor;
  }
  final int? payId = jsonConvert.convert<int>(json['pay_id']);
  if (payId != null) {
    withdrawRequetHistoryDataUsers.payId = payId;
  }
  final int? tranFromBank = jsonConvert.convert<int>(json['tran_from_bank']);
  if (tranFromBank != null) {
    withdrawRequetHistoryDataUsers.tranFromBank = tranFromBank;
  }
  final String? ourTransactionId = jsonConvert.convert<String>(json['our_transaction_id']);
  if (ourTransactionId != null) {
    withdrawRequetHistoryDataUsers.ourTransactionId = ourTransactionId;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    withdrawRequetHistoryDataUsers.status = status;
  }
  final String? adminNote = jsonConvert.convert<String>(json['admin_note']);
  if (adminNote != null) {
    withdrawRequetHistoryDataUsers.adminNote = adminNote;
  }
  final int? adminId = jsonConvert.convert<int>(json['admin_id']);
  if (adminId != null) {
    withdrawRequetHistoryDataUsers.adminId = adminId;
  }
  final int? usd = jsonConvert.convert<int>(json['usd']);
  if (usd != null) {
    withdrawRequetHistoryDataUsers.usd = usd;
  }
  final String? comment = jsonConvert.convert<String>(json['comment']);
  if (comment != null) {
    withdrawRequetHistoryDataUsers.comment = comment;
  }
  final String? createdAt = jsonConvert.convert<String>(json['created_at']);
  if (createdAt != null) {
    withdrawRequetHistoryDataUsers.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    withdrawRequetHistoryDataUsers.updatedAt = updatedAt;
  }
  final String? ip = jsonConvert.convert<String>(json['ip']);
  if (ip != null) {
    withdrawRequetHistoryDataUsers.ip = ip;
  }
  final String? requestTimeline = jsonConvert.convert<String>(json['request_timeline']);
  if (requestTimeline != null) {
    withdrawRequetHistoryDataUsers.requestTimeline = requestTimeline;
  }
  final dynamic requestCanceledbybackend = json['request_canceledByBackend'];
  if (requestCanceledbybackend != null) {
    withdrawRequetHistoryDataUsers.requestCanceledbybackend = requestCanceledbybackend;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    withdrawRequetHistoryDataUsers.image = image;
  }
  return withdrawRequetHistoryDataUsers;
}

Map<String, dynamic> $WithdrawRequetHistoryDataUsersToJson(WithdrawRequetHistoryDataUsers entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['user_id'] = entity.userId;
  data['wallet_id'] = entity.walletId;
  data['amount'] = entity.amount;
  data['dollar_rate'] = entity.dollarRate;
  data['inr'] = entity.inr;
  data['currency'] = entity.currency;
  data['payment_processor'] = entity.paymentProcessor;
  data['pay_id'] = entity.payId;
  data['tran_from_bank'] = entity.tranFromBank;
  data['our_transaction_id'] = entity.ourTransactionId;
  data['status'] = entity.status;
  data['admin_note'] = entity.adminNote;
  data['admin_id'] = entity.adminId;
  data['usd'] = entity.usd;
  data['comment'] = entity.comment;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  data['ip'] = entity.ip;
  data['request_timeline'] = entity.requestTimeline;
  data['request_canceledByBackend'] = entity.requestCanceledbybackend;
  data['image'] = entity.image;
  return data;
}

extension WithdrawRequetHistoryDataUsersExtension on WithdrawRequetHistoryDataUsers {
  WithdrawRequetHistoryDataUsers copyWith({
    int? id,
    int? userId,
    String? walletId,
    int? amount,
    double? dollarRate,
    dynamic inr,
    String? currency,
    String? paymentProcessor,
    int? payId,
    int? tranFromBank,
    String? ourTransactionId,
    String? status,
    String? adminNote,
    int? adminId,
    int? usd,
    String? comment,
    String? createdAt,
    String? updatedAt,
    String? ip,
    String? requestTimeline,
    dynamic requestCanceledbybackend,
    String? image,
  }) {
    return WithdrawRequetHistoryDataUsers()
      ..id = id ?? this.id
      ..userId = userId ?? this.userId
      ..walletId = walletId ?? this.walletId
      ..amount = amount ?? this.amount
      ..dollarRate = dollarRate ?? this.dollarRate
      ..inr = inr ?? this.inr
      ..currency = currency ?? this.currency
      ..paymentProcessor = paymentProcessor ?? this.paymentProcessor
      ..payId = payId ?? this.payId
      ..tranFromBank = tranFromBank ?? this.tranFromBank
      ..ourTransactionId = ourTransactionId ?? this.ourTransactionId
      ..status = status ?? this.status
      ..adminNote = adminNote ?? this.adminNote
      ..adminId = adminId ?? this.adminId
      ..usd = usd ?? this.usd
      ..comment = comment ?? this.comment
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..ip = ip ?? this.ip
      ..requestTimeline = requestTimeline ?? this.requestTimeline
      ..requestCanceledbybackend = requestCanceledbybackend ?? this.requestCanceledbybackend
      ..image = image ?? this.image;
  }
}

WithdrawRequetHistoryDataPagination $WithdrawRequetHistoryDataPaginationFromJson(Map<String, dynamic> json) {
  final WithdrawRequetHistoryDataPagination withdrawRequetHistoryDataPagination = WithdrawRequetHistoryDataPagination();
  final int? currentPage = jsonConvert.convert<int>(json['current_page']);
  if (currentPage != null) {
    withdrawRequetHistoryDataPagination.currentPage = currentPage;
  }
  final int? perPage = jsonConvert.convert<int>(json['per_page']);
  if (perPage != null) {
    withdrawRequetHistoryDataPagination.perPage = perPage;
  }
  final int? from = jsonConvert.convert<int>(json['from']);
  if (from != null) {
    withdrawRequetHistoryDataPagination.from = from;
  }
  final int? to = jsonConvert.convert<int>(json['to']);
  if (to != null) {
    withdrawRequetHistoryDataPagination.to = to;
  }
  final int? totalPage = jsonConvert.convert<int>(json['total_page']);
  if (totalPage != null) {
    withdrawRequetHistoryDataPagination.totalPage = totalPage;
  }
  final int? totalRecord = jsonConvert.convert<int>(json['total_record']);
  if (totalRecord != null) {
    withdrawRequetHistoryDataPagination.totalRecord = totalRecord;
  }
  return withdrawRequetHistoryDataPagination;
}

Map<String, dynamic> $WithdrawRequetHistoryDataPaginationToJson(WithdrawRequetHistoryDataPagination entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['current_page'] = entity.currentPage;
  data['per_page'] = entity.perPage;
  data['from'] = entity.from;
  data['to'] = entity.to;
  data['total_page'] = entity.totalPage;
  data['total_record'] = entity.totalRecord;
  return data;
}

extension WithdrawRequetHistoryDataPaginationExtension on WithdrawRequetHistoryDataPagination {
  WithdrawRequetHistoryDataPagination copyWith({
    int? currentPage,
    int? perPage,
    int? from,
    int? to,
    int? totalPage,
    int? totalRecord,
  }) {
    return WithdrawRequetHistoryDataPagination()
      ..currentPage = currentPage ?? this.currentPage
      ..perPage = perPage ?? this.perPage
      ..from = from ?? this.from
      ..to = to ?? this.to
      ..totalPage = totalPage ?? this.totalPage
      ..totalRecord = totalRecord ?? this.totalRecord;
  }
}