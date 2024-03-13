class DivisionModel {
  bool? success;
  List<Data>? data;

  DivisionModel({this.success, this.data});

  DivisionModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? countryId;
  String? division;
  String? bndivision;
  String? slug;
  Null? screma;
  Null? metadescription;
  Null? photo;
  String? status;
  String? view;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.countryId,
        this.division,
        this.bndivision,
        this.slug,
        this.screma,
        this.metadescription,
        this.photo,
        this.status,
        this.view,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryId = json['country_id'];
    division = json['division'];
    bndivision = json['bndivision'];
    slug = json['slug'];
    screma = json['screma'];
    metadescription = json['metadescription'];
    photo = json['photo'];
    status = json['status'];
    view = json['view'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['country_id'] = this.countryId;
    data['division'] = this.division;
    data['bndivision'] = this.bndivision;
    data['slug'] = this.slug;
    data['screma'] = this.screma;
    data['metadescription'] = this.metadescription;
    data['photo'] = this.photo;
    data['status'] = this.status;
    data['view'] = this.view;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
