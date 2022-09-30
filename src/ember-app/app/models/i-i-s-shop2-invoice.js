import $ from 'jquery';
import { buildValidations } from 'ember-cp-validations';

import {
  defineBaseModel,
  defineProjections,
  ValidationRules,
  Model as InvoiceMixin
} from '../mixins/regenerated/models/i-i-s-shop2-invoice';

import DocumentModel from './i-i-s-shop2-document';
import { ValidationRules as ParentValidationRules } from '../mixins/regenerated/models/i-i-s-shop2-document';

const Validations = buildValidations($.extend({}, ParentValidationRules, ValidationRules), {
  dependentKeys: ['model.i18n.locale'],
});

let Model = DocumentModel.extend(InvoiceMixin, Validations, {
});

defineBaseModel(Model);
defineProjections(Model);

export default Model;
