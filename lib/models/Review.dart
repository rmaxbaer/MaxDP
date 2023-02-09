/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Review type in your schema. */
@immutable
class Review extends Model {
  static const classType = const _ReviewModelType();
  final String id;
  final String? _profileID;
  final String? _restaurantID;
  final bool? _hasEaten;
  final String? _title;
  final String? _body;
  final int? _rating;
  final bool? _recommended;
  final TemporalDateTime? _date;
  final List<ReviewImage>? _ReviewImages;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ReviewModelIdentifier get modelIdentifier {
      return ReviewModelIdentifier(
        id: id
      );
  }
  
  String get profileID {
    try {
      return _profileID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get restaurantID {
    try {
      return _restaurantID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  bool? get hasEaten {
    return _hasEaten;
  }
  
  String? get title {
    return _title;
  }
  
  String? get body {
    return _body;
  }
  
  int? get rating {
    return _rating;
  }
  
  bool? get recommended {
    return _recommended;
  }
  
  TemporalDateTime? get date {
    return _date;
  }
  
  List<ReviewImage>? get ReviewImages {
    return _ReviewImages;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Review._internal({required this.id, required profileID, required restaurantID, hasEaten, title, body, rating, recommended, date, ReviewImages, createdAt, updatedAt}): _profileID = profileID, _restaurantID = restaurantID, _hasEaten = hasEaten, _title = title, _body = body, _rating = rating, _recommended = recommended, _date = date, _ReviewImages = ReviewImages, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Review({String? id, required String profileID, required String restaurantID, bool? hasEaten, String? title, String? body, int? rating, bool? recommended, TemporalDateTime? date, List<ReviewImage>? ReviewImages}) {
    return Review._internal(
      id: id == null ? UUID.getUUID() : id,
      profileID: profileID,
      restaurantID: restaurantID,
      hasEaten: hasEaten,
      title: title,
      body: body,
      rating: rating,
      recommended: recommended,
      date: date,
      ReviewImages: ReviewImages != null ? List<ReviewImage>.unmodifiable(ReviewImages) : ReviewImages);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Review &&
      id == other.id &&
      _profileID == other._profileID &&
      _restaurantID == other._restaurantID &&
      _hasEaten == other._hasEaten &&
      _title == other._title &&
      _body == other._body &&
      _rating == other._rating &&
      _recommended == other._recommended &&
      _date == other._date &&
      DeepCollectionEquality().equals(_ReviewImages, other._ReviewImages);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Review {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("profileID=" + "$_profileID" + ", ");
    buffer.write("restaurantID=" + "$_restaurantID" + ", ");
    buffer.write("hasEaten=" + (_hasEaten != null ? _hasEaten!.toString() : "null") + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("body=" + "$_body" + ", ");
    buffer.write("rating=" + (_rating != null ? _rating!.toString() : "null") + ", ");
    buffer.write("recommended=" + (_recommended != null ? _recommended!.toString() : "null") + ", ");
    buffer.write("date=" + (_date != null ? _date!.format() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Review copyWith({String? profileID, String? restaurantID, bool? hasEaten, String? title, String? body, int? rating, bool? recommended, TemporalDateTime? date, List<ReviewImage>? ReviewImages}) {
    return Review._internal(
      id: id,
      profileID: profileID ?? this.profileID,
      restaurantID: restaurantID ?? this.restaurantID,
      hasEaten: hasEaten ?? this.hasEaten,
      title: title ?? this.title,
      body: body ?? this.body,
      rating: rating ?? this.rating,
      recommended: recommended ?? this.recommended,
      date: date ?? this.date,
      ReviewImages: ReviewImages ?? this.ReviewImages);
  }
  
  Review.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _profileID = json['profileID'],
      _restaurantID = json['restaurantID'],
      _hasEaten = json['hasEaten'],
      _title = json['title'],
      _body = json['body'],
      _rating = (json['rating'] as num?)?.toInt(),
      _recommended = json['recommended'],
      _date = json['date'] != null ? TemporalDateTime.fromString(json['date']) : null,
      _ReviewImages = json['ReviewImages'] is List
        ? (json['ReviewImages'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ReviewImage.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'profileID': _profileID, 'restaurantID': _restaurantID, 'hasEaten': _hasEaten, 'title': _title, 'body': _body, 'rating': _rating, 'recommended': _recommended, 'date': _date?.format(), 'ReviewImages': _ReviewImages?.map((ReviewImage? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'profileID': _profileID, 'restaurantID': _restaurantID, 'hasEaten': _hasEaten, 'title': _title, 'body': _body, 'rating': _rating, 'recommended': _recommended, 'date': _date, 'ReviewImages': _ReviewImages, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<ReviewModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<ReviewModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField PROFILEID = QueryField(fieldName: "profileID");
  static final QueryField RESTAURANTID = QueryField(fieldName: "restaurantID");
  static final QueryField HASEATEN = QueryField(fieldName: "hasEaten");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField BODY = QueryField(fieldName: "body");
  static final QueryField RATING = QueryField(fieldName: "rating");
  static final QueryField RECOMMENDED = QueryField(fieldName: "recommended");
  static final QueryField DATE = QueryField(fieldName: "date");
  static final QueryField REVIEWIMAGES = QueryField(
    fieldName: "ReviewImages",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'ReviewImage'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Review";
    modelSchemaDefinition.pluralName = "Reviews";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["profileID"], name: "byProfile"),
      ModelIndex(fields: const ["restaurantID"], name: "byRestaurant")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Review.PROFILEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Review.RESTAURANTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Review.HASEATEN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Review.TITLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Review.BODY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Review.RATING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Review.RECOMMENDED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Review.DATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Review.REVIEWIMAGES,
      isRequired: false,
      ofModelName: 'ReviewImage',
      associatedKey: ReviewImage.REVIEWID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ReviewModelType extends ModelType<Review> {
  const _ReviewModelType();
  
  @override
  Review fromJson(Map<String, dynamic> jsonData) {
    return Review.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Review';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Review] in your schema.
 */
@immutable
class ReviewModelIdentifier implements ModelIdentifier<Review> {
  final String id;

  /** Create an instance of ReviewModelIdentifier using [id] the primary key. */
  const ReviewModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'ReviewModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ReviewModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}