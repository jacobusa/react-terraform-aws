'use strict';
function handler(event) {
  var response = event.response;
  var uri = response.uri;
  if (uri === '/apple-app-site-association') {
    var newResponse = {
      statusCode: 200,
      statusDescription: 'OK',
      headers: {
        'content-type': { value: 'application/json' },
      },
    };
    return newResponse;
  }
  return response;
}
