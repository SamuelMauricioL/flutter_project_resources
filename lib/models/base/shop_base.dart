import 'company_base.dart';

abstract class ShopBase extends CompanyBase {
  String? shopId;

  ShopBase(
      {super.companyId,
      super.id,
      this.shopId,
      super.modified,
      super.created,
      super.updated,
      super.deleted,
      super.dirty});
}
