import Mixin from '@ember/object/mixin';
import $ from 'jquery';
import DS from 'ember-data';
import { validator } from 'ember-cp-validations';
import { attr, belongsTo, hasMany } from 'ember-flexberry-data/utils/attributes';

export let Model = Mixin.create({
  address: DS.attr('string'),
  number: DS.attr('number', { defaultValue: 1 }),
  storekeeper: DS.belongsTo('i-i-s-shop2-employee', { inverse: null, async: false }),
  storeProduct: DS.hasMany('i-i-s-shop2-store-product', { inverse: 'storehouse', async: false })
});

export let ValidationRules = {
  address: {
    descriptionKey: 'models.i-i-s-shop2-storehouse.validations.address.__caption__',
    validators: [
      validator('ds-error'),
    ],
  },
  number: {
    descriptionKey: 'models.i-i-s-shop2-storehouse.validations.number.__caption__',
    validators: [
      validator('ds-error'),
      validator('number', { allowString: true, integer: true }),
    ],
  },
  storekeeper: {
    descriptionKey: 'models.i-i-s-shop2-storehouse.validations.storekeeper.__caption__',
    validators: [
      validator('ds-error'),
    ],
  },
  storeProduct: {
    descriptionKey: 'models.i-i-s-shop2-storehouse.validations.storeProduct.__caption__',
    validators: [
      validator('ds-error'),
      validator('has-many'),
    ],
  },
};

export let defineProjections = function (modelClass) {
  modelClass.defineProjection('StorehouseE', 'i-i-s-shop2-storehouse', {
    number: attr('Номер', { index: 0 }),
    address: attr('Адрес', { index: 1 }),
    storekeeper: belongsTo('i-i-s-shop2-employee', 'Кладовщик', {
      lastName: attr('~', { index: 3, hidden: true })
    }, { index: 2, displayMemberPath: 'lastName' }),
    storeProduct: hasMany('i-i-s-shop2-store-product', 'Список товаров', {
      amount: attr('Количество', { index: 0 }),
      product: belongsTo('i-i-s-shop2-product', 'Товар', {
        name: attr('~', { index: 2, hidden: true })
      }, { index: 1, displayMemberPath: 'name' })
    })
  });

  modelClass.defineProjection('StorehouseL', 'i-i-s-shop2-storehouse', {
    number: attr('Номер', { index: 0 }),
    address: attr('Адрес', { index: 1 }),
    storekeeper: belongsTo('i-i-s-shop2-employee', 'Кладовщик', {
      lastName: attr('Кладовщик', { index: 2 })
    }, { index: -1, hidden: true })
  });
};
