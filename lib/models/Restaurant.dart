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


/** This is an auto generated class representing the Restaurant type in your schema. */
@immutable
class Restaurant extends Model {
  static const classType = const _RestaurantModelType();
  final String id;
  final String? _name;
  final String? _location;
  final List<RestaurantDishList>? _DishLists;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  RestaurantModelIdentifier get modelIdentifier {
      return RestaurantModelIdentifier(
        id: id
      );
  }
  
  String? get name {
    return _name;
  }
  
  String? get location {
    return _location;
  }
  
  List<RestaurantDishList>? get DishLists {
    return _DishLists;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Restaurant._internal({required this.id, name, location, DishLists, createdAt, updatedAt}): _name = name, _location = location, _DishLists = DishLists, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Restaurant({String? id, String? name, String? location, List<RestaurantDishList>? DishLists}) {
    return Restaurant._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      location: location,
      DishLists: DishLists != null ? List<RestaurantDishList>.unmodifiable(DishLists) : DishLists);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Restaurant &&
      id == other.id &&
      _name == other._name &&
      _location == other._location &&
      DeepCollectionEquality().equals(_DishLists, other._DishLists);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Restaurant {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("location=" + "$_location" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Restaurant copyWith({String? name, String? location, List<RestaurantDishList>? DishLists}) {
    return Restaurant._internal(
      id: id,
      name: name ?? this.name,
      location: location ?? this.location,
      DishLists: DishLists ?? this.DishLists);
  }
  
  Restaurant.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _location = json['location'],
      _DishLists = json['DishLists'] is List
        ? (json['DishLists'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => RestaurantDishList.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'location': _location, 'DishLists': _DishLists?.map((RestaurantDishList? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'location': _location, 'DishLists': _DishLists, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<RestaurantModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<RestaurantModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField LOCATION = QueryField(fieldName: "location");
  static final QueryField DISHLISTS = QueryField(
    fieldName: "DishLists",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'RestaurantDishList'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Restaurant";
    modelSchemaDefinition.pluralName = "Restaurants";
    
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurant.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurant.LOCATION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Restaurant.DISHLISTS,
      isRequired: false,
      ofModelName: 'RestaurantDishList',
      associatedKey: RestaurantDishList.RESTAURANT
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

class _RestaurantModelType extends ModelType<Restaurant> {
  const _RestaurantModelType();
  
  @override
  Restaurant fromJson(Map<String, dynamic> jsonData) {
    return Restaurant.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Restaurant';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Restaurant] in your schema.
 */
@immutable
class RestaurantModelIdentifier implements ModelIdentifier<Restaurant> {
  final String id;

  /** Create an instance of RestaurantModelIdentifier using [id] the primary key. */
  const RestaurantModelIdentifier({
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
  String toString() => 'RestaurantModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is RestaurantModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}