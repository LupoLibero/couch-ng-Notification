var Type        = require('couchtypes/types').Type;
var fields      = require('couchtypes/fields');
var permissions = require('couchtypes/permissions');

/*
 * basculer en validate.js
exports.notification = new Type('notification', {
  permissions: {
    add: permissions.hasRole('_admin'),
    update: permissions.hasRole('_admin'),
    remove: permissions.hasRole('_admin')
  },
  fields: {
    subscriber: fields.string(),
    message: fields.string(),
    subject: fields.string(),
    created_at: fields.createdTime(),
    displayed: fields.boolean({
      default_value: function (req) {
        return false;
      },
      permissions: {
        update: permissions.usernameMatchesField('subscriber'),
      }
    })
  }
})
*/
