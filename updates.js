exports.card_create = function(doc, req) {
  var attr;
  var form = JSON.parse(req.body);
  if(doc === null){
    throw({forbidden: 'Not for creation'});
  } else {
    doc.displayed = true
    return ([doc, 'ok']);
  }
}

