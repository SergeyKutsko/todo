# http://emberjs.com/guides/models/using-the-store/

App.Store = DS.Store.extend
  namespace: 'api/v1'
  # Override the default adapter with the `DS.ActiveModelAdapter` which
  # is built to work nicely with the ActiveModel::Serializers gem.
  adapter: '_ams'
