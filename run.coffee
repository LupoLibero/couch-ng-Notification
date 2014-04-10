angular.module('notification').
run( (notification, Notif, $rootScope, login)->
  # $rootScope.$on('SessionChanged', ->
  #   if login.isConnect()
  #     longPolling.start('notifications', {
  #       user: login.getName()
  #     })
  #   else
  #     longPolling.stop()
  # )

  $rootScope.$on('ChangesOnNotifications', ($event, _id) ->
    Notif.get({
      view: 'all'
      _id: _id
    }).then(
      (data) -> #Success
        notification.addAlert(data.message, 'info', 'long')
        Notif.update({
          update: 'displayed'
          _id: _id
        })
    )
  )
)
