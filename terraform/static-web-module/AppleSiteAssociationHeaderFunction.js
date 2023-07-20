'use strict';
const handler = (event, context, callback) => {
  var response = event.response;
  var headers = event.headers;
  console.log('response');
  console.log(response);
  console.log('event');
  console.log(event);
  console.log('context');
  console.log(context);
  console.log('callback');
  console.log(callback);
  headers['x-test-header'] = { value: 'this is a test' };
  return response;
};

export default handler;
