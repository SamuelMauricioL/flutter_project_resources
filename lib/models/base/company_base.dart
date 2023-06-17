import 'package:flutter_project_resources/models/base/entity_base.dart';

abstract class CompanyBase extends EntityBase {
  String? companyId;
  CompanyBase(
      {this.companyId,
      super.id,
      super.created,
      super.modified,
      super.deleted,
      super.updated,
      super.dirty});
}
