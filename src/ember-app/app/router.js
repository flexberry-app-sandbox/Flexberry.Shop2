import EmberRouter from '@ember/routing/router';
import config from './config/environment';

const Router = EmberRouter.extend({
  location: config.locationType
});

Router.map(function () {
  this.route('i-i-s-shop2-document-l');
  this.route('i-i-s-shop2-document-e',
  { path: 'i-i-s-shop2-document-e/:id' });
  this.route('i-i-s-shop2-document-e.new',
  { path: 'i-i-s-shop2-document-e/new' });
  this.route('i-i-s-shop2-employee-l');
  this.route('i-i-s-shop2-employee-e',
  { path: 'i-i-s-shop2-employee-e/:id' });
  this.route('i-i-s-shop2-employee-e.new',
  { path: 'i-i-s-shop2-employee-e/new' });
  this.route('i-i-s-shop2-invoice-l');
  this.route('i-i-s-shop2-invoice-e',
  { path: 'i-i-s-shop2-invoice-e/:id' });
  this.route('i-i-s-shop2-invoice-e.new',
  { path: 'i-i-s-shop2-invoice-e/new' });
  this.route('i-i-s-shop2-order-l');
  this.route('i-i-s-shop2-order-e',
  { path: 'i-i-s-shop2-order-e/:id' });
  this.route('i-i-s-shop2-order-e.new',
  { path: 'i-i-s-shop2-order-e/new' });
  this.route('i-i-s-shop2-product-l');
  this.route('i-i-s-shop2-product-e',
  { path: 'i-i-s-shop2-product-e/:id' });
  this.route('i-i-s-shop2-product-e.new',
  { path: 'i-i-s-shop2-product-e/new' });
  this.route('i-i-s-shop2-storehouse-l');
  this.route('i-i-s-shop2-storehouse-e',
  { path: 'i-i-s-shop2-storehouse-e/:id' });
  this.route('i-i-s-shop2-storehouse-e.new',
  { path: 'i-i-s-shop2-storehouse-e/new' });
});

export default Router;
