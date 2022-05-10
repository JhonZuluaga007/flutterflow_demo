import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'projects_record.g.dart';

abstract class ProjectsRecord
    implements Built<ProjectsRecord, ProjectsRecordBuilder> {
  static Serializer<ProjectsRecord> get serializer =>
      _$projectsRecordSerializer;

  @nullable
  String get titulo;

  @nullable
  double get tokens;

  @nullable
  double get precio;

  @nullable
  double get valorToken;

  @nullable
  String get descripcion;

  @nullable
  @BuiltValueField(wireName: 'url_image')
  String get urlImage;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProjectsRecordBuilder builder) => builder
    ..titulo = ''
    ..tokens = 0.0
    ..precio = 0.0
    ..valorToken = 0.0
    ..descripcion = ''
    ..urlImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projects');

  static Stream<ProjectsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProjectsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProjectsRecord._();
  factory ProjectsRecord([void Function(ProjectsRecordBuilder) updates]) =
      _$ProjectsRecord;

  static ProjectsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProjectsRecordData({
  String titulo,
  double tokens,
  double precio,
  double valorToken,
  String descripcion,
  String urlImage,
}) =>
    serializers.toFirestore(
        ProjectsRecord.serializer,
        ProjectsRecord((p) => p
          ..titulo = titulo
          ..tokens = tokens
          ..precio = precio
          ..valorToken = valorToken
          ..descripcion = descripcion
          ..urlImage = urlImage));
