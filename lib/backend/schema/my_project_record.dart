import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'my_project_record.g.dart';

abstract class MyProjectRecord
    implements Built<MyProjectRecord, MyProjectRecordBuilder> {
  static Serializer<MyProjectRecord> get serializer =>
      _$myProjectRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'user_email')
  String get userEmail;

  @nullable
  @BuiltValueField(wireName: 'project_title')
  String get projectTitle;

  @nullable
  @BuiltValueField(wireName: 'project_tokens')
  double get projectTokens;

  @nullable
  @BuiltValueField(wireName: 'project_description')
  String get projectDescription;

  @nullable
  @BuiltValueField(wireName: 'project_images')
  String get projectImages;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MyProjectRecordBuilder builder) => builder
    ..userEmail = ''
    ..projectTitle = ''
    ..projectTokens = 0.0
    ..projectDescription = ''
    ..projectImages = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('myProject');

  static Stream<MyProjectRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MyProjectRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MyProjectRecord._();
  factory MyProjectRecord([void Function(MyProjectRecordBuilder) updates]) =
      _$MyProjectRecord;

  static MyProjectRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMyProjectRecordData({
  String userEmail,
  String projectTitle,
  double projectTokens,
  String projectDescription,
  String projectImages,
}) =>
    serializers.toFirestore(
        MyProjectRecord.serializer,
        MyProjectRecord((m) => m
          ..userEmail = userEmail
          ..projectTitle = projectTitle
          ..projectTokens = projectTokens
          ..projectDescription = projectDescription
          ..projectImages = projectImages));
