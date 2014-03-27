exports.notifications = function (doc, req) {
    return doc.type && doc.type == 'notification' && !doc.displayed && doc.subscriber == req.query.user
}
