import 'package:riverpod_tutorial/generated/json/base/json_field.dart';
import 'package:riverpod_tutorial/generated/json/withdraw_requet_history_entity.g.dart';
import 'dart:convert';
export 'package:riverpod_tutorial/generated/json/withdraw_requet_history_entity.g.dart';

@JsonSerializable()
class WithdrawRequestHistoryEntity {
	WithdrawRequetHistoryResponse? response;
	WithdrawRequetHistoryData? data;

	WithdrawRequestHistoryEntity();

	factory WithdrawRequestHistoryEntity.fromJson(Map<String, dynamic> json) => $WithdrawRequetHistoryEntityFromJson(json);

	Map<String, dynamic> toJson() => $WithdrawRequetHistoryEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WithdrawRequetHistoryResponse {
	String? status = '';
	String? message = '';

	WithdrawRequetHistoryResponse();

	factory WithdrawRequetHistoryResponse.fromJson(Map<String, dynamic> json) => $WithdrawRequetHistoryResponseFromJson(json);

	Map<String, dynamic> toJson() => $WithdrawRequetHistoryResponseToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WithdrawRequetHistoryData {
	List<WithdrawRequetHistoryDataUsers>? users = [];
	WithdrawRequetHistoryDataPagination? pagination;

	WithdrawRequetHistoryData();

	factory WithdrawRequetHistoryData.fromJson(Map<String, dynamic> json) => $WithdrawRequetHistoryDataFromJson(json);

	Map<String, dynamic> toJson() => $WithdrawRequetHistoryDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WithdrawRequetHistoryDataUsers {
	int? id = 0;
	@JSONField(name: "user_id")
	int? userId = 0;
	@JSONField(name: "wallet_id")
	String? walletId = '';
	int? amount = 0;
	@JSONField(name: "dollar_rate")
	double? dollarRate;
	dynamic inr;
	String? currency = '';
	@JSONField(name: "payment_processor")
	String? paymentProcessor = '';
	@JSONField(name: "pay_id")
	int? payId = 0;
	@JSONField(name: "tran_from_bank")
	int? tranFromBank = 0;
	@JSONField(name: "our_transaction_id")
	String? ourTransactionId = '';
	String? status = '';
	@JSONField(name: "admin_note")
	String? adminNote = '';
	@JSONField(name: "admin_id")
	int? adminId = 0;
	int? usd = 0;
	String? comment = '';
	@JSONField(name: "created_at")
	String? createdAt = '';
	@JSONField(name: "updated_at")
	String? updatedAt = '';
	String? ip = '';
	@JSONField(name: "request_timeline")
	String? requestTimeline = '';
	@JSONField(name: "request_canceledByBackend")
	dynamic requestCanceledbybackend;
	String? image = '';

	WithdrawRequetHistoryDataUsers();

	factory WithdrawRequetHistoryDataUsers.fromJson(Map<String, dynamic> json) => $WithdrawRequetHistoryDataUsersFromJson(json);

	Map<String, dynamic> toJson() => $WithdrawRequetHistoryDataUsersToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WithdrawRequetHistoryDataPagination {
	@JSONField(name: "current_page")
	int? currentPage = 0;
	@JSONField(name: "per_page")
	int? perPage = 0;
	int? from = 0;
	int? to = 0;
	@JSONField(name: "total_page")
	int? totalPage = 0;
	@JSONField(name: "total_record")
	int? totalRecord = 0;

	WithdrawRequetHistoryDataPagination();

	factory WithdrawRequetHistoryDataPagination.fromJson(Map<String, dynamic> json) => $WithdrawRequetHistoryDataPaginationFromJson(json);

	Map<String, dynamic> toJson() => $WithdrawRequetHistoryDataPaginationToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}