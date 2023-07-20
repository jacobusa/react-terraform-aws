'use strict';
function handler(event) {
  var response = event.response;
  var uri = event.request.uri;
  if (uri === '/apple-app-site-association') {
    response.headers['content-type'] = { value: 'application/json' };
  }
  return response;
}
