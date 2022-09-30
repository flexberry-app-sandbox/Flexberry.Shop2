import { moduleForModel, test } from 'ember-qunit';

moduleForModel('i-i-s-shop2-order', 'Unit | Serializer | i-i-s-shop2-order', {
  // Specify the other units that are required for this test.
  needs: [
    'serializer:i-i-s-shop2-order',
    'service:syncer',
    'transform:file',
    'transform:decimal',
    'transform:guid',

    'transform:i-i-s-shop2-invoice-status',
    'transform:i-i-s-shop2-order-status',
    'transform:i-i-s-shop2-position-list',

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
  ],
});

// Replace this with your real tests.
test('it serializes records', function(assert) {
  let record = this.subject();

  let serializedRecord = record.serialize();

  assert.ok(serializedRecord);
});
