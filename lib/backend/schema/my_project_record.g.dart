// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_project_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyProjectRecord> _$myProjectRecordSerializer =
    new _$MyProjectRecordSerializer();

class _$MyProjectRecordSerializer
    implements StructuredSerializer<MyProjectRecord> {
  @override
  final Iterable<Type> types = const [MyProjectRecord, _$MyProjectRecord];
  @override
  final String wireName = 'MyProjectRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MyProjectRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.projectId;
    if (value != null) {
      result
        ..add('projectId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  MyProjectRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyProjectRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'projectId':
          result.projectId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$MyProjectRecord extends MyProjectRecord {
  @override
  final DocumentReference<Object> projectId;
  @override
  final DocumentReference<Object> userId;
  @override
  final DocumentReference<Object> reference;

  factory _$MyProjectRecord([void Function(MyProjectRecordBuilder) updates]) =>
      (new MyProjectRecordBuilder()..update(updates)).build();

  _$MyProjectRecord._({this.projectId, this.userId, this.reference})
      : super._();

  @override
  MyProjectRecord rebuild(void Function(MyProjectRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyProjectRecordBuilder toBuilder() =>
      new MyProjectRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyProjectRecord &&
        projectId == other.projectId &&
        userId == other.userId &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, projectId.hashCode), userId.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MyProjectRecord')
          ..add('projectId', projectId)
          ..add('userId', userId)
          ..add('reference', reference))
        .toString();
  }
}

class MyProjectRecordBuilder
    implements Builder<MyProjectRecord, MyProjectRecordBuilder> {
  _$MyProjectRecord _$v;

  DocumentReference<Object> _projectId;
  DocumentReference<Object> get projectId => _$this._projectId;
  set projectId(DocumentReference<Object> projectId) =>
      _$this._projectId = projectId;

  DocumentReference<Object> _userId;
  DocumentReference<Object> get userId => _$this._userId;
  set userId(DocumentReference<Object> userId) => _$this._userId = userId;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MyProjectRecordBuilder() {
    MyProjectRecord._initializeBuilder(this);
  }

  MyProjectRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectId = $v.projectId;
      _userId = $v.userId;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyProjectRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MyProjectRecord;
  }

  @override
  void update(void Function(MyProjectRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MyProjectRecord build() {
    final _$result = _$v ??
        new _$MyProjectRecord._(
            projectId: projectId, userId: userId, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
