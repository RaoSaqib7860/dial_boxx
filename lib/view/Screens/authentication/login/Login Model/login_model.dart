class LoginModel {
  String? result;
  String? error;
  String? message;
  Data? data;

  LoginModel({this.result, this.error, this.message, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    error = json['error'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['error'] = this.error;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  int? roleId;
  int? status;
  int? shopType;
  int? domainId;
  String? name;
  String? email;
  String? createdAt;
  String? domain;
  int? userplanId;
  String? fullDomain;
  int? type;
  String? willExpire;
  int? isTrial;
  int? userId;
  int? templateId;
  String? updatedAt;
  int? businessIndustory;
  int? onOff;
  String? country;
  int? category;

  Data(
      {this.id,
        this.roleId,
        this.status,
        this.shopType,
        this.domainId,
        this.name,
        this.email,
        this.createdAt,
        this.domain,
        this.userplanId,
        this.fullDomain,
        this.type,
        this.willExpire,
        this.isTrial,
        this.userId,
        this.templateId,
        this.updatedAt,
        this.businessIndustory,
        this.onOff,
        this.country,
        this.category});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roleId = json['role_id'];
    status = json['status'];
    shopType = json['shop_type'];
    domainId = json['domain_id'];
    name = json['name'];
    email = json['email'];
    createdAt = json['created_at'];
    domain = json['domain'];
    userplanId = json['userplan_id'];
    fullDomain = json['full_domain'];
    type = json['type'];
    willExpire = json['will_expire'];
    isTrial = json['is_trial'];
    userId = json['user_id'];
    templateId = json['template_id'];
    updatedAt = json['updated_at'];
    businessIndustory = json['business_industory'];
    onOff = json['on_off'];
    country = json['country'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['role_id'] = this.roleId;
    data['status'] = this.status;
    data['shop_type'] = this.shopType;
    data['domain_id'] = this.domainId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['created_at'] = this.createdAt;
    data['domain'] = this.domain;
    data['userplan_id'] = this.userplanId;
    data['full_domain'] = this.fullDomain;
    data['type'] = this.type;
    data['will_expire'] = this.willExpire;
    data['is_trial'] = this.isTrial;
    data['user_id'] = this.userId;
    data['template_id'] = this.templateId;
    data['updated_at'] = this.updatedAt;
    data['business_industory'] = this.businessIndustory;
    data['on_off'] = this.onOff;
    data['country'] = this.country;
    data['category'] = this.category;
    return data;
  }
}
