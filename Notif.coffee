angular.module('notification').
factory('Notif', (CouchDB, db)->
  return CouchDB(db.url, db.name, 'notification')
)
