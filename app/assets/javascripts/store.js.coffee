# http://emberjs.com/guides/models/using-the-store/

DS.RESTAdapter.reopen
  namespace: 'api/v1'
  headers:
    'Content-type': 'application/json'



App.Store = DS.Store.extend
  namespace: 'api/v1'
  adapter: DS.RESTAdapter.create()
