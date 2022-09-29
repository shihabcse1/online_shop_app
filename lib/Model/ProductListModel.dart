class ProductListModel {
  ProductListModel({
    required this.status,
    required this.data,
  });
  late final String status;
  late final Data data;

  ProductListModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.categories,
    required this.products,
  });
  late final List<dynamic> categories;
  late final Products products;

  Data.fromJson(Map<String, dynamic> json){
    categories = List.castFrom<dynamic, dynamic>(json['categories']);
    products = Products.fromJson(json['products']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['categories'] = categories;
    _data['products'] = products.toJson();
    return _data;
  }
}

class Products {
  Products({
    required this.count,
    required this.next,
    this.previous,
    required this.results,
  });
  late final num count;
  late final String next;
  late final Null previous;
  late final List<Results> results;

  Products.fromJson(Map<String, dynamic> json){
    count = json['count'];
    next = json['next'];
    previous = null;
    results = List.from(json['results']).map((e)=>Results.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['count'] = count;
    _data['next'] = next;
    _data['previous'] = previous;
    _data['results'] = results.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Results {
  Results({
    required this.id,
    required this.brand,
    required this.image,
    required this.charge,
    required this.images,
    required this.slug,
    required this.productName,
    required this.model,
    required this.commissionType,
    required this.amount,
    required this.tag,
    required this.description,
    required this.note,
    required this.embaddedVideoLink,
    required this.maximumOrder,
    required this.stock,
    required this.isBackOrder,
    required this.specification,
    required this.warranty,
    required this.preOrder,
    required this.productReview,
    required this.isSeller,
    required this.isPhone,
    required this.willShowEmi,
    this.badge,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.language,
    required this.seller,
    this.combo,
    required this.createdBy,
    this.updatedBy,
    required this.category,
    required this.relatedProduct,
    required this.filterValue,
  });
  late final num id;
  late final Brand brand;
  late final String image;
  late final Charge charge;
  late final List<Images> images;
  late final String slug;
  late final String productName;
  late final String model;
  late final String commissionType;
  late final String amount;
  late final String tag;
  late final String description;
  late final String note;
  late final String embaddedVideoLink;
  late final num maximumOrder;
  late final num stock;
  late final bool isBackOrder;
  late final String specification;
  late final String warranty;
  late final bool preOrder;
  late final num productReview;
  late final bool isSeller;
  late final bool isPhone;
  late final bool willShowEmi;
  late final Null badge;
  late final bool isActive;
  late final String createdAt;
  late final String updatedAt;
  late final Null language;
  late final String seller;
  late final Null combo;
  late final String createdBy;
  late final Null updatedBy;
  late final List<num> category;
  late final List<dynamic> relatedProduct;
  late final List<dynamic> filterValue;

  Results.fromJson(Map<String, dynamic> json){
    id = json['id'];
    brand = Brand.fromJson(json['brand']);
    image = json['image'];
    charge = Charge.fromJson(json['charge']);
    images = List.from(json['images']).map((e)=>Images.fromJson(e)).toList();
    slug = json['slug'];
    productName = json['product_name'];
    model = json['model'];
    commissionType = json['commission_type'];
    amount = json['amount'];
    tag = json['tag'];
    description = json['description'];
    note = json['note'];
    embaddedVideoLink = json['embadded_video_link'];
    maximumOrder = json['maximum_order'];
    stock = json['stock'];
    isBackOrder = json['is_back_order'];
    specification = json['specification'];
    warranty = json['warranty'];
    preOrder = json['pre_order'];
    productReview = json['product_review'];
    isSeller = json['is_seller'];
    isPhone = json['is_phone'];
    willShowEmi = json['will_show_emi'];
    badge = null;
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    language = null;
    seller = json['seller'];
    combo = null;
    createdBy = json['created_by'];
    updatedBy = null;
    category = List.castFrom<dynamic, num>(json['category']);
    relatedProduct = List.castFrom<dynamic, dynamic>(json['related_product']);
    filterValue = List.castFrom<dynamic, dynamic>(json['filter_value']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['brand'] = brand.toJson();
    _data['image'] = image;
    _data['charge'] = charge.toJson();
    _data['images'] = images.map((e)=>e.toJson()).toList();
    _data['slug'] = slug;
    _data['product_name'] = productName;
    _data['model'] = model;
    _data['commission_type'] = commissionType;
    _data['amount'] = amount;
    _data['tag'] = tag;
    _data['description'] = description;
    _data['note'] = note;
    _data['embadded_video_link'] = embaddedVideoLink;
    _data['maximum_order'] = maximumOrder;
    _data['stock'] = stock;
    _data['is_back_order'] = isBackOrder;
    _data['specification'] = specification;
    _data['warranty'] = warranty;
    _data['pre_order'] = preOrder;
    _data['product_review'] = productReview;
    _data['is_seller'] = isSeller;
    _data['is_phone'] = isPhone;
    _data['will_show_emi'] = willShowEmi;
    _data['badge'] = badge;
    _data['is_active'] = isActive;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['language'] = language;
    _data['seller'] = seller;
    _data['combo'] = combo;
    _data['created_by'] = createdBy;
    _data['updated_by'] = updatedBy;
    _data['category'] = category;
    _data['related_product'] = relatedProduct;
    _data['filter_value'] = filterValue;
    return _data;
  }
}

class Brand {
  Brand({
    required this.name,
    required this.image,
    this.headerImage,
    required this.slug,
  });
  late final String name;
  late final String image;
  late final String? headerImage;
  late final String slug;

  Brand.fromJson(Map<String, dynamic> json){
    name = json['name'];
    image = json['image'];
    headerImage = null;
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['image'] = image;
    _data['header_image'] = headerImage;
    _data['slug'] = slug;
    return _data;
  }
}

class Charge {
  Charge({
    required this.bookingPrice,
    required this.currentCharge,
    this.discountCharge,
    this.sellingPrice,
    this.profit,
    required this.isEvent,
    this.eventId,
    required this.highlight,
    this.highlightId,
    required this.groupping,
    this.grouppingId,
    this.campaignSectionId,
    required this.campaignSection,
    this.message,
  });
  late final num bookingPrice;
  late final num? currentCharge;
  late final Null discountCharge;
  late final dynamic sellingPrice;
  late final num? profit;
  late final bool isEvent;
  late final Null eventId;
  late final bool highlight;
  late final Null highlightId;
  late final bool groupping;
  late final Null grouppingId;
  late final Null campaignSectionId;
  late final bool campaignSection;
  late final Null message;

  Charge.fromJson(Map<String, dynamic> json){
    bookingPrice = json['booking_price'];
    currentCharge = json['current_charge'];
    discountCharge = null;
    sellingPrice = json['selling_price'];
    profit = json['profit'];
    isEvent = json['is_event'];
    eventId = null;
    highlight = json['highlight'];
    highlightId = null;
    groupping = json['groupping'];
    grouppingId = null;
    campaignSectionId = null;
    campaignSection = json['campaign_section'];
    message = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['booking_price'] = bookingPrice;
    _data['current_charge'] = currentCharge;
    _data['discount_charge'] = discountCharge;
    _data['selling_price'] = sellingPrice;
    _data['profit'] = profit;
    _data['is_event'] = isEvent;
    _data['event_id'] = eventId;
    _data['highlight'] = highlight;
    _data['highlight_id'] = highlightId;
    _data['groupping'] = groupping;
    _data['groupping_id'] = grouppingId;
    _data['campaign_section_id'] = campaignSectionId;
    _data['campaign_section'] = campaignSection;
    _data['message'] = message;
    return _data;
  }
}

class Images {
  Images({
    required this.id,
    required this.image,
    required this.isPrimary,
    required this.product,
  });
  late final num id;
  late final String image;
  late final bool isPrimary;
  late final num product;

  Images.fromJson(Map<String, dynamic> json){
    id = json['id'];
    image = json['image'];
    isPrimary = json['is_primary'];
    product = json['product'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['image'] = image;
    _data['is_primary'] = isPrimary;
    _data['product'] = product;
    return _data;
  }
}