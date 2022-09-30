import Mixin from '@ember/object/mixin';
import $ from 'jquery';
import DS from 'ember-data';
import { validator } from 'ember-cp-validations';
import { attr, belongsTo, hasMany } from 'ember-flexberry-data/utils/attributes';

export let Model = Mixin.create({
  amount: DS.attr('number'),
  priceWTaxes: DS.attr('decimal'),
  totalSum: DS.attr('decimal'),
  product: DS.belongsTo('i-i-s-shop2-product', { inverse: null, async: false }),
  order: DS.belongsTo('i-i-s-shop2-order', { inverse: 'orderItem', async: false })
});

export let ValidationRules = {
  amount: {
    descriptionKey: 'models.i-i-s-shop2-order-item.validations.amount.__caption__',
    validators: [
      validator('ds-error'),
      validator('number', { allowString: true, allowBlank: true, integer: true }),
    ],
  },
  priceWTaxes: {
    descriptionKey: 'models.i-i-s-shop2-order-item.validations.priceWTaxes.__caption__',
    validators: [
      validator('ds-error'),
      validator('number', { allowString: true, allowBlank: true }),
    ],
  },
  totalSum: {
    descriptionKey: 'models.i-i-s-shop2-order-item.validations.totalSum.__caption__',
    validators: [
      validator('ds-error'),
      validator('number', { allowString: true, allowBlank: true }),
    ],
  },
  product: {
    descriptionKey: 'models.i-i-s-shop2-order-item.validations.product.__caption__',
    validators: [
      validator('ds-error'),
    ],
  },
  order: {
    descriptionKey: 'models.i-i-s-shop2-order-item.validations.order.__caption__',
    validators: [
      validator('ds-error'),
      validator('presence', true),
    ],
  },
};

export let defineProjections = function (modelClass) {
  modelClass.defineProjection('OrderItemE', 'i-i-s-shop2-order-item', {
    product: belongsTo('i-i-s-shop2-product', 'Товар', {
      name: attr('~', { index: 1, hidden: true })
    }, { index: 0, displayMemberPath: 'name' }),
    amount: attr('Количество', { index: 2 }),
    priceWTaxes: attr('Цена с налогом', { index: 3 }),
    totalSum: attr('Сумма по позиции', { index: 4 })
  });

  modelClass.defineProjection('OrderItemInOrderL', 'i-i-s-shop2-order-item', {
    amount: attr('~', { index: 0, hidden: true }),
    priceWTaxes: attr('~', { index: 1, hidden: true })
  });
};
