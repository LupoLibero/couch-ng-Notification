angular.module('notification').
run( (notification, Notif, socket, $rootScope)->
  $rootScope.$on('SessionChange', ($event, name) ->
    socket.emit('setUsername', name)
  )

  socket.on('notification', (_id) ->
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
