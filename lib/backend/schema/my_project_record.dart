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
  DocumentReference get projectId;

  @nullable
  DocumentReference get userId;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MyProjectRecordBuilder builder) => builder;

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
  DocumentReference projectId,
  DocumentReference userId,
}) =>
    serializers.toFirestore(
        MyProjectRecord.serializer,
        MyProjectRecord((m) => m
          ..projectId = projectId
          ..userId = userId));
