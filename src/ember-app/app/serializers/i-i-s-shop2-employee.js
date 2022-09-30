import { Serializer as EmployeeSerializer } from
  '../mixins/regenerated/serializers/i-i-s-shop2-employee';
import __ApplicationSerializer from './application';

export default __ApplicationSerializer.extend(EmployeeSerializer, {
  /**
  * Field name where object identifier is kept.
  */
  primaryKey: '__PrimaryKey'
});
