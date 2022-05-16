// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectsRecord> _$projectsRecordSerializer =
    new _$ProjectsRecordSerializer();

class _$ProjectsRecordSerializer
    implements StructuredSerializer<ProjectsRecord> {
  @override
  final Iterable<Type> types = const [ProjectsRecord, _$ProjectsRecord];
  @override
  final String wireName = 'ProjectsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProjectsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tokens;
    if (value != null) {
      result
        ..add('tokens')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precio;
    if (value != null) {
      result
        ..add('precio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.valorToken;
    if (value != null) {
      result
        ..add('valorToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urlImage;
    if (value != null) {
      result
        ..add('url_image')
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
  ProjectsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tokens':
          result.tokens = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precio':
          result.precio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'valorToken':
          result.valorToken = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url_image':
          result.urlImage = serializers.deserialize(value,
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

class _$ProjectsRecord extends ProjectsRecord {
  @override
  final String titulo;
  @override
  final double tokens;
  @override
  final double precio;
  @override
  final double valorToken;
  @override
  final String descripcion;
  @override
  final String urlImage;
  @override
  final DocumentReference<Object> reference;

  factory _$ProjectsRecord([void Function(ProjectsRecordBuilder) updates]) =>
      (new ProjectsRecordBuilder()..update(updates)).build();

  _$ProjectsRecord._(
      {this.titulo,
      this.tokens,
      this.precio,
      this.valorToken,
      this.descripcion,
      this.urlImage,
      this.reference})
      : super._();

  @override
  ProjectsRecord rebuild(void Function(ProjectsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectsRecordBuilder toBuilder() =>
      new ProjectsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectsRecord &&
        titulo == other.titulo &&
        tokens == other.tokens &&
        precio == other.precio &&
        valorToken == other.valorToken &&
        descripcion == other.descripcion &&
        urlImage == other.urlImage &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, titulo.hashCode), tokens.hashCode),
                        precio.hashCode),
                    valorToken.hashCode),
                descripcion.hashCode),
            urlImage.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectsRecord')
          ..add('titulo', titulo)
          ..add('tokens', tokens)
          ..add('precio', precio)
          ..add('valorToken', valorToken)
          ..add('descripcion', descripcion)
          ..add('urlImage', urlImage)
          ..add('reference', reference))
        .toString();
  }
}

class ProjectsRecordBuilder
    implements Builder<ProjectsRecord, ProjectsRecordBuilder> {
  _$ProjectsRecord _$v;

  String _titulo;
  String get titulo => _$this._titulo;
  set titulo(String titulo) => _$this._titulo = titulo;

  double _tokens;
  double get tokens => _$this._tokens;
  set tokens(double tokens) => _$this._tokens = tokens;

  double _precio;
  double get precio => _$this._precio;
  set precio(double precio) => _$this._precio = precio;

  double _valorToken;
  double get valorToken => _$this._valorToken;
  set valorToken(double valorToken) => _$this._valorToken = valorToken;

  String _descripcion;
  String get descripcion => _$this._descripcion;
  set descripcion(String descripcion) => _$this._descripcion = descripcion;

  String _urlImage;
  String get urlImage => _$this._urlImage;
  set urlImage(String urlImage) => _$this._urlImage = urlImage;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProjectsRecordBuilder() {
    ProjectsRecord._initializeBuilder(this);
  }

  ProjectsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titulo = $v.titulo;
      _tokens = $v.tokens;
      _precio = $v.precio;
      _valorToken = $v.valorToken;
      _descripcion = $v.descripcion;
      _urlImage = $v.urlImage;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectsRecord;
  }

  @override
  void update(void Function(ProjectsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectsRecord build() {
    final _$result = _$v ??
        new _$ProjectsRecord._(
            titulo: titulo,
            tokens: tokens,
            precio: precio,
            valorToken: valorToken,
            descripcion: descripcion,
            urlImage: urlImage,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
