import $ from 'jquery';
import EmberFlexberryTranslations from 'ember-flexberry/locales/en/translations';

import IISShop2DocumentLForm from './forms/i-i-s-shop2-document-l';
import IISShop2EmployeeLForm from './forms/i-i-s-shop2-employee-l';
import IISShop2InvoiceLForm from './forms/i-i-s-shop2-invoice-l';
import IISShop2OrderLForm from './forms/i-i-s-shop2-order-l';
import IISShop2ProductLForm from './forms/i-i-s-shop2-product-l';
import IISShop2StorehouseLForm from './forms/i-i-s-shop2-storehouse-l';
import IISShop2DocumentEForm from './forms/i-i-s-shop2-document-e';
import IISShop2EmployeeEForm from './forms/i-i-s-shop2-employee-e';
import IISShop2InvoiceEForm from './forms/i-i-s-shop2-invoice-e';
import IISShop2OrderEForm from './forms/i-i-s-shop2-order-e';
import IISShop2ProductEForm from './forms/i-i-s-shop2-product-e';
import IISShop2StorehouseEForm from './forms/i-i-s-shop2-storehouse-e';
import IISShop2DocumentModel from './models/i-i-s-shop2-document';
import IISShop2EmployeeModel from './models/i-i-s-shop2-employee';
import IISShop2InvoiceItemModel from './models/i-i-s-shop2-invoice-item';
import IISShop2InvoiceModel from './models/i-i-s-shop2-invoice';
import IISShop2OrderItemModel from './models/i-i-s-shop2-order-item';
import IISShop2OrderModel from './models/i-i-s-shop2-order';
import IISShop2ProductModel from './models/i-i-s-shop2-product';
import IISShop2StoreProductModel from './models/i-i-s-shop2-store-product';
import IISShop2StorehouseModel from './models/i-i-s-shop2-storehouse';

const translations = {};
$.extend(true, translations, EmberFlexberryTranslations);

$.extend(true, translations, {
  models: {
    'i-i-s-shop2-document': IISShop2DocumentModel,
    'i-i-s-shop2-employee': IISShop2EmployeeModel,
    'i-i-s-shop2-invoice-item': IISShop2InvoiceItemModel,
    'i-i-s-shop2-invoice': IISShop2InvoiceModel,
    'i-i-s-shop2-order-item': IISShop2OrderItemModel,
    'i-i-s-shop2-order': IISShop2OrderModel,
    'i-i-s-shop2-product': IISShop2ProductModel,
    'i-i-s-shop2-store-product': IISShop2StoreProductModel,
    'i-i-s-shop2-storehouse': IISShop2StorehouseModel
  },

  'application-name': 'Магазин',

  forms: {
    loading: {
      'spinner-caption': 'Loading stuff, please wait for a moment...'
    },
    index: {
      greeting: 'Welcome to ember-flexberry test stand!'
    },

    application: {
      header: {
        menu: {
          'sitemap-button': {
            title: 'Menu'
          },
          'user-settings-service-checkbox': {
            caption: 'Use service to save user settings'
          },
          'show-menu': {
            caption: 'Show menu'
          },
          'hide-menu': {
            caption: 'Hide menu'
          },
          'language-dropdown': {
            caption: 'Application language',
            placeholder: 'Choose language'
          }
        },
        login: {
          caption: 'Login'
        },
        logout: {
          caption: 'Logout'
        }
      },

      footer: {
        'application-name': 'Магазин',
        'application-version': {
          caption: 'Addon version {{version}}',
          title: 'It is version of ember-flexberry addon, which uses in this dummy application ' +
          '(npm version + commit sha). ' +
          'Click to open commit on GitHub.'
        }
      },

      sitemap: {
        'application-name': {
          caption: 'Магазин',
          title: 'Магазин'
        },
        'application-version': {
          caption: 'Addon version {{version}}',
          title: 'It is version of ember-flexberry addon, which uses in this dummy application ' +
          '(npm version + commit sha). ' +
          'Click to open commit on GitHub.'
        },
        index: {
          caption: 'Home',
          title: ''
        },
        магазин: {
          caption: 'Магазин',
          title: 'Магазин',
          'информация-о-заказах': {
            caption: 'Информация о заказах',
            title: 'Информация о заказах',
            'i-i-s-shop2-order-l': {
              caption: 'Заказы',
              title: 'Order'
            },
            'i-i-s-shop2-invoice-l': {
              caption: 'Накладные',
              title: 'Invoice'
            }
          },
          'товары-на-складе': {
            caption: 'Товары на складе',
            title: 'Товары на складе',
            'i-i-s-shop2-storehouse-l': {
              caption: 'Склады',
              title: 'Storehouse'
            },
            'i-i-s-shop2-product-l': {
              caption: 'Товары',
              title: 'Product'
            }
          }
        },
        'данные-о-сотрудниках': {
          caption: 'Данные о сотрудниках',
          title: 'Данные о сотрудниках',
          'i-i-s-shop2-employee-l': {
            caption: 'Сотрудники',
            title: 'Employee'
          }
        }
      }
    },

    'edit-form': {
      'save-success-message-caption': 'Save operation succeed',
      'save-success-message': 'Object saved',
      'save-error-message-caption': 'Save operation failed',
      'delete-success-message-caption': 'Delete operation succeed',
      'delete-success-message': 'Object deleted',
      'delete-error-message-caption': 'Delete operation failed'
    },
    'i-i-s-shop2-document-l': IISShop2DocumentLForm,
    'i-i-s-shop2-employee-l': IISShop2EmployeeLForm,
    'i-i-s-shop2-invoice-l': IISShop2InvoiceLForm,
    'i-i-s-shop2-order-l': IISShop2OrderLForm,
    'i-i-s-shop2-product-l': IISShop2ProductLForm,
    'i-i-s-shop2-storehouse-l': IISShop2StorehouseLForm,
    'i-i-s-shop2-document-e': IISShop2DocumentEForm,
    'i-i-s-shop2-employee-e': IISShop2EmployeeEForm,
    'i-i-s-shop2-invoice-e': IISShop2InvoiceEForm,
    'i-i-s-shop2-order-e': IISShop2OrderEForm,
    'i-i-s-shop2-product-e': IISShop2ProductEForm,
    'i-i-s-shop2-storehouse-e': IISShop2StorehouseEForm
  },

});

export default translations;
