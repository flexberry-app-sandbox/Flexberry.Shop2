import { moduleForModel, test } from 'ember-qunit';

moduleForModel('i-i-s-shop2-product', 'Unit | Model | i-i-s-shop2-product', {
  // Specify the other units that are required for this test.
  needs: [
    'model:i-i-s-shop2-document',
    'model:i-i-s-shop2-employee',
    'model:i-i-s-shop2-invoice-item',
    'model:i-i-s-shop2-invoice',
    'model:i-i-s-shop2-order-item',
    'model:i-i-s-shop2-order',
    'model:i-i-s-shop2-product',
    'model:i-i-s-shop2-store-product',
    'model:i-i-s-shop2-storehouse',
    'validator:ds-error',
    'validator:presence',
    'validator:number',
    'validator:date',
    'validator:belongs-to',
    'validator:has-many',
    'service:syncer',
  ],
});

test('it exists', function(assert) {
  let model = this.subject();

  // let store = this.store();
  assert.ok(!!model);
});
