'use strict';
function handler(event) {
  var request = event.request;
  var uri = request.uri;
  if (uri === '/apple-app-site-association') {
    var response = {
      statusCode: 200,
      headers: {
        'Content-Type': { value: 'application/json' },
      },
    };
    return response;
  }
  return request;
}
