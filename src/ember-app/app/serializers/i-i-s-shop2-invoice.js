import { Serializer as InvoiceSerializer } from
  '../mixins/regenerated/serializers/i-i-s-shop2-invoice';
import DocumentSerializer from './i-i-s-shop2-document';

export default DocumentSerializer.extend(InvoiceSerializer, {
  /**
  * Field name where object identifier is kept.
  */
  primaryKey: '__PrimaryKey'
});
