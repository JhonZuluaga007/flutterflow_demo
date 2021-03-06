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
    value = object.userEmail;
    if (value != null) {
      result
        ..add('user_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectTitle;
    if (value != null) {
      result
        ..add('project_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectTokens;
    if (value != null) {
      result
        ..add('project_tokens')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.projectDescription;
    if (value != null) {
      result
        ..add('project_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectImages;
    if (value != null) {
      result
        ..add('project_images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
        case 'user_email':
          result.userEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'project_title':
          result.projectTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'project_tokens':
          result.projectTokens = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'project_description':
          result.projectDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'project_images':
          result.projectImages = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
  final String userEmail;
  @override
  final String projectTitle;
  @override
  final double projectTokens;
  @override
  final String projectDescription;
  @override
  final String projectImages;
  @override
  final DocumentReference<Object> reference;

  factory _$MyProjectRecord([void Function(MyProjectRecordBuilder) updates]) =>
      (new MyProjectRecordBuilder()..update(updates)).build();

  _$MyProjectRecord._(
      {this.userEmail,
      this.projectTitle,
      this.projectTokens,
      this.projectDescription,
      this.projectImages,
      this.reference})
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
        userEmail == other.userEmail &&
        projectTitle == other.projectTitle &&
        projectTokens == other.projectTokens &&
        projectDescription == other.projectDescription &&
        projectImages == other.projectImages &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, userEmail.hashCode), projectTitle.hashCode),
                    projectTokens.hashCode),
                projectDescription.hashCode),
            projectImages.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MyProjectRecord')
          ..add('userEmail', userEmail)
          ..add('projectTitle', projectTitle)
          ..add('projectTokens', projectTokens)
          ..add('projectDescription', projectDescription)
          ..add('projectImages', projectImages)
          ..add('reference', reference))
        .toString();
  }
}

class MyProjectRecordBuilder
    implements Builder<MyProjectRecord, MyProjectRecordBuilder> {
  _$MyProjectRecord _$v;

  String _userEmail;
  String get userEmail => _$this._userEmail;
  set userEmail(String userEmail) => _$this._userEmail = userEmail;

  String _projectTitle;
  String get projectTitle => _$this._projectTitle;
  set projectTitle(String projectTitle) => _$this._projectTitle = projectTitle;

  double _projectTokens;
  double get projectTokens => _$this._projectTokens;
  set projectTokens(double projectTokens) =>
      _$this._projectTokens = projectTokens;

  String _projectDescription;
  String get projectDescription => _$this._projectDescription;
  set projectDescription(String projectDescription) =>
      _$this._projectDescription = projectDescription;

  String _projectImages;
  String get projectImages => _$this._projectImages;
  set projectImages(String projectImages) =>
      _$this._projectImages = projectImages;

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
      _userEmail = $v.userEmail;
      _projectTitle = $v.projectTitle;
      _projectTokens = $v.projectTokens;
      _projectDescription = $v.projectDescription;
      _projectImages = $v.projectImages;
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
            userEmail: userEmail,
            projectTitle: projectTitle,
            projectTokens: projectTokens,
            projectDescription: projectDescription,
            projectImages: projectImages,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
