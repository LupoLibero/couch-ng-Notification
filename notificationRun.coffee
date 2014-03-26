angular.module('notification').
run( (notification, Notif, $interval, login)->
  $interval( ->
    if login.isConnect()
      Notif.all({
        startkey: ["", login.getName()]
        endkey:   [{}, login.getName()]
      }).then(
        (datas) -> #Success
          for data in datas
            notification.addAlert(data.message, 'info', 'long')
            Notif.update({
              update: 'displayed'

            _id: data._id
            })
        ,(err) -> #Error
          console.log err
    )
  , 2000)
)
