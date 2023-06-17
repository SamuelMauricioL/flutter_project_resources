import 'package:isar/isar.dart';

abstract class EntityBase {
  @Ignore()
  int? isarId;
  @Ignore()
  String? id;
  int? created;
  int? modified;
  bool? deleted;
  bool? updated;
  bool? dirty;
  EntityBase(
      {this.created,
      this.modified,
      this.deleted,
      this.updated,
      this.dirty,
      this.id});
}
